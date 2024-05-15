import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/auth/entities/otp.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'otp_dto.freezed.dart';
part 'otp_dto.g.dart';

@freezed
class OtpDto with _$OtpDto {
  const OtpDto._();
  factory OtpDto({
    @JsonKey(name: 'user_id', defaultValue: '') required String userId,
    required String otp,
  }) = _OtpDto;

  Otp get toDomain => Otp(userId: userId, otp: OTP(otp));

  factory OtpDto.fromJson(Map<String, dynamic> json) => _$OtpDtoFromJson(json);
}
