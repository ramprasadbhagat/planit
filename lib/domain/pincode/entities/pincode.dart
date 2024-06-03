import 'package:freezed_annotation/freezed_annotation.dart';

part 'pincode.freezed.dart';

@freezed
class Pincode with _$Pincode {
  const factory Pincode({
    required String pincode,
  }) = _Pincode;

  factory Pincode.empty() => const Pincode(pincode: '');
}
