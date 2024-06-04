part of 'pincode_bloc.dart';

@freezed
class PincodeState with _$PincodeState {
  const PincodeState._();
  const factory PincodeState({
    required String pincode,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool showErrorMessages,
  }) = _PincodeState;

  factory PincodeState.initial() => PincodeState(
        pincode: '',
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        showErrorMessages: true,
      );
}
