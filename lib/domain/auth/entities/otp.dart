import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'otp.freezed.dart';

@freezed
class Otp with _$Otp {
  factory Otp({
    required String userId,
    required OTP otp,
  }) = _Otp;

  factory Otp.empty() => Otp(userId: '', otp: OTP(''));
}
