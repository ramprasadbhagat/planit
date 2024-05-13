part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const LoginFormState._();

  const factory LoginFormState({
    required MobileNumber mobileNumber,
    required OTP otp,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        mobileNumber: MobileNumber(''),
        otp: OTP(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
