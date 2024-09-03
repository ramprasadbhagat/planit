part of 'otp_bloc.dart';

@freezed
class OtpState with _$OtpState {
  const OtpState._();
  const factory OtpState({
    required MobileNumber mobileNumber,
    required OTP otp,
    required Auth auth,
    required bool isSubmitting,
    required bool resentOtpLoading,
    required Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption,
  }) = _OtpState;

  factory OtpState.initial() => OtpState(
        mobileNumber: MobileNumber(''),
        otp: OTP(''),
        auth: Auth.empty(),
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        resentOtpLoading: false,
      );
}
