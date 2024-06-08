part of 'pincode_bloc.dart';

@freezed
class PincodeEvent with _$PincodeEvent {
  const factory PincodeEvent.initialized() = _Initialized;
  const factory PincodeEvent.checkPincode({
    required String pincode,
  }) = _PincodeCheck;
  const factory PincodeEvent.savePincode({
    required String pincode,
  }) = _PincodeSave;
}