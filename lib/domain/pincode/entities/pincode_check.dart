import 'package:freezed_annotation/freezed_annotation.dart';

part 'pincode_check.freezed.dart';

@freezed
class PincodeCheck with _$PincodeCheck {
  const factory PincodeCheck({
    required String pincode,
  }) = _PincodeCheck;

  factory PincodeCheck.empty() => const PincodeCheck(pincode: '');
}
