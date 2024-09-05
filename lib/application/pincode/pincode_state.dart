part of 'pincode_bloc.dart';

@freezed
class PincodeState with _$PincodeState {
  const PincodeState._();
  const factory PincodeState({
    required String tempPin,
    required String pincode,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isChecking,
    required bool pinCodeVerified,
    required bool isSaving,
    required bool showErrorMessages,
    required bool isValidLength,
  }) = _PincodeState;

  factory PincodeState.initial() => PincodeState(
        pincode: '',
        apiFailureOrSuccessOption: none(),
        isChecking: false,
        isSaving: false,
        showErrorMessages: true,
        pinCodeVerified: false,
        tempPin: '',
        isValidLength: false,
      );
}
