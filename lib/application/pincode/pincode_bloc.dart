import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/pincode/repository/i_pincode_repository.dart';

part 'pincode_event.dart';
part 'pincode_state.dart';
part 'pincode_bloc.freezed.dart';

class PincodeBloc extends Bloc<PincodeEvent, PincodeState> {
  final IPincodeRepository repository;
  PincodeBloc({
    required this.repository,
  }) : super(PincodeState.initial()) {
    on<PincodeEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    PincodeEvent event,
    Emitter<PincodeState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(PincodeState.initial()),
      checkPincode: (value) async {
        emit(state.copyWith(isFetching: true, pincode: value.pincode));
        final failureOrSuccess = await repository.checkPincode(
          pincode: value.pincode,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              pincode: '',
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (pincode) => add(_PincodeSave(pincode: state.pincode)),
        );
      },
      savePincode: (value) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.savePincode(
          pincode: value.pincode,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              pincode: '',
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (pincode) => emit(
            state.copyWith(
              isFetching: false,
              pincode: pincode.pincode,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
        );
      },
    );
  }
}
