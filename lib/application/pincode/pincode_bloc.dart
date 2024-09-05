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
      resetVerificationStatus: (e) async {
        if (state.pincode.isNotEmpty) {
          emit(
            state.copyWith(
              pinCodeVerified: true,
              showErrorMessages: false,
              isValidLength: true,
            ),
          );
        } else {
          emit(
            state.copyWith(
              pinCodeVerified: false,
              showErrorMessages: false,
              isValidLength: false,
            ),
          );
        }
      },
      checkPincode: (value) async {
        if (value.pincode.length < 6) {
          emit(state.copyWith(isValidLength: false));
          return;
        }
        emit(
          state.copyWith(
            isChecking: true,
            pinCodeVerified: false,
            showErrorMessages: false,
            isValidLength: true,
          ),
        );
        final failureOrSuccess = await repository.checkPincode(
          pincode: value.pincode,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isChecking: false,
              pinCodeVerified: false,
              showErrorMessages: true,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (pincodeCheck) => emit(
            state.copyWith(
              isChecking: false,
              pinCodeVerified: true,
              showErrorMessages: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
        );
      },
      savePincode: (value) async {
        emit(state.copyWith(isSaving: true));
        final failureOrSuccess = await repository.savePincode(
          pincode: value.pincode,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isSaving: false,
              pincode: '',
              apiFailureOrSuccessOption: none(),
            ),
          ),
          (pincode) => emit(
            state.copyWith(
              isSaving: false,
              pincode: pincode.pincode,
              apiFailureOrSuccessOption: none(),
            ),
          ),
        );
      },
    );
  }
}
