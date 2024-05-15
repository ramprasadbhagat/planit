// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpDtoImpl _$$OtpDtoImplFromJson(Map<String, dynamic> json) => _$OtpDtoImpl(
      userId: json['user_id'] as String? ?? '',
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$$OtpDtoImplToJson(_$OtpDtoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'otp': instance.otp,
    };
