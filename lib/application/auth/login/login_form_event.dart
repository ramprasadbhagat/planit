part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.updateMobileNumber(String mobileStr) =
      _UpdateMobileNumber;
  const factory LoginFormEvent.sendOtp() = _SendOtp;
}
