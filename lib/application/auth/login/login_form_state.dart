part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const LoginFormState._();
  const factory LoginFormState({
    required MobileNumber mobileNumber,
    required bool isSubmitting,
    required Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        mobileNumber: MobileNumber(''),
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
