part of 'user_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const UserProfileState._();

  const factory UserProfileState({
    required bool isFetching,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required CurrentUser user,
    required CurrentUser updatedUser,
    required bool isEditMode,
    required bool showErrorMessage,
    required bool isSubmitting,
  }) = _UserProfileState;

  factory UserProfileState.initial() => UserProfileState(
        isFetching: false,
        apiFailureOrSuccessOption: none(),
        user: CurrentUser.empty(),
        isEditMode: false,
        updatedUser: CurrentUser.empty(),
        showErrorMessage: false,
        isSubmitting: false,
      );

  bool get isProfileCompleted =>
      user.fullName.isValid() &&
      user.emailAddress.isValid() &&
      user.mobileNumber.isValid();
}
