// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDtoImpl _$$AuthDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthDtoImpl(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthDtoImplToJson(_$AuthDtoImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
