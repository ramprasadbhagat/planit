part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.mobileNumberChanged(String mobileStr) =
      _MobileNumberChanged;
  const factory LoginFormEvent.otpChanged(String otpStr) = _OTPChanged;
  const factory LoginFormEvent.initiateLogin() = _InitiateLogin;
  const factory LoginFormEvent.verifyOTP() = _VerifyOTP;
}
