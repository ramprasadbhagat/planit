part of 'otp_bloc.dart';

@freezed
class OtpEvent with _$OtpEvent {
  const factory OtpEvent.initializeMobileNumber(MobileNumber mobileNumber) =
      _InitializeMobileNumber;
  const factory OtpEvent.updateOtp(String otp) = _UpdateOtp;
  const factory OtpEvent.resendOtp() = _ResendOtp;
  const factory OtpEvent.submitOtp() = _SubmitOtp;
}
