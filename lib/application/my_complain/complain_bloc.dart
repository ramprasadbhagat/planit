import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/my_complain/entities/complain.dart';
import 'package:planit/domain/my_complain/repository/i_complain_repository.dart';

part 'complain_event.dart';
part 'complain_state.dart';
part 'complain_bloc.freezed.dart';

class ComplainBloc extends Bloc<ComplainEvent, ComplainState> {
  final IComplainRepository repository;
  ComplainBloc({required this.repository}) : super(ComplainState.initial()) {
    on<ComplainEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    ComplainEvent event,
    Emitter<ComplainState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(ComplainState.initial()),
      addComplain: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.addComplain(
          complainContent: e.complainContent,
          email: e.email,
          file: e.file,
          name: e.name,
          orderId: e.orderId,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isFetching: false,
            ),
          ),
          (res) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
            add(const _Fetch());
          },
        );
      },
      selectImage: (_) async {
        final picker = ImagePicker();
        final image = await picker.pickImage(source: ImageSource.gallery);
        if (image != null) {
          final file = File(image.path);
          emit(state.copyWith(image: file));
        }
      },
      removeImage: (_) {
        emit(state.copyWith(image: null));
      },
      selectOrderId: (e) {
        emit(state.copyWith(orderId: e.value));
      },
      removeOrderId: (_) {
        emit(state.copyWith(orderId: null));
      },
      fetch: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );

        final failureOrSuccess = await repository.getComplainsList();
        failureOrSuccess.fold((l) {
          emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isFetching: false,
            ),
          );
        }, (list) {
          emit(
            state.copyWith(
              apiFailureOrSuccessOption: none(),
              isFetching: false,
              complains: list,
              image: null,
              orderId: null,
            ),
          );
        });
      },
    );
  }
}
