import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/user/entities/user.dart';
import 'package:planit/domain/user/repository/i_user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IUserRepository repository;
  UserProfileBloc({required this.repository})
      : super(UserProfileState.initial()) {
    on<UserProfileEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    UserProfileEvent event,
    Emitter<UserProfileState> emit,
  ) async {
    await event.map(
      fetch: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccess = await repository.fetchCurrentUser();

        failureOrSuccess.fold(
          (l) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (r) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              user: r,
              updatedUser: r,
            ),
          ),
        );
      },
      toggleEditMode: (_ToggleEditMode value) async => emit(
        state.copyWith(
          isEditMode: !state.isEditMode,
          showErrorMessage: false,
          apiFailureOrSuccessOption: none(),
          updatedUser: state.user,
        ),
      ),
      nameFieldChange: (_NameFieldChange value) {
        emit(
          state.copyWith(
            updatedUser: state.updatedUser.copyWith(
              fullName: FullName(value.value),
            ),
          ),
        );
      },
      emailFieldChange: (_EmailFieldChange value) {
        emit(
          state.copyWith(
            updatedUser: state.updatedUser.copyWith(
              emailAddress: EmailAddress(value.value),
            ),
          ),
        );
      },
      phoneFieldChange: (_PhoneFieldChange value) {
        emit(
          state.copyWith(
            updatedUser: state.updatedUser.copyWith(
              mobileNumber: MobileNumber(value.value),
            ),
          ),
        );
      },
      updateUserClicked: (_UpdateUserClicked value) async {
        if (state.updatedUser.isValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              showErrorMessage: false,
              apiFailureOrSuccessOption: none(),
            ),
          );

          final failureOrSuccessOption = await repository.updateCurrentUser(
            user: state.updatedUser,
            localImagePath: state.localImagePath,
          );

          failureOrSuccessOption.fold(
            (l) => emit(
              state.copyWith(
                isSubmitting: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccessOption),
              ),
            ),
            (r) {
              emit(
                UserProfileState.initial().copyWith(
                  user: state.user,
                  updatedUser: state.user,
                ),
              );
              add(const _Fetch());
            },
          );
        } else {
          emit(
            state.copyWith(
              showErrorMessage: true,
              apiFailureOrSuccessOption: none(),
            ),
          );
        }
      },
      pickImageClick: (_PickImageClick value) async {
        final failureOrSuccess = await repository.pickProfileImage();

        failureOrSuccess.fold(
          (l) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (r) => emit(
            state.copyWith(
              localImagePath: r,
            ),
          ),
        );
      },
      reset: (value) {
        emit(
          UserProfileState.initial(),
        );
      },
    );
  }
}
