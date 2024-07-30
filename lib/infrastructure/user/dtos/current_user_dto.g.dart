// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUserDtoImpl _$$CurrentUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUserDtoImpl(
      id: json['id'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      mobileNumber: json['mobile_number'] as String? ?? '',
      emailAddress: json['email'] as String? ?? '',
      profilePicture:
          parseProfileImage(json, 'profilePicture') as String? ?? '',
    );

Map<String, dynamic> _$$CurrentUserDtoImplToJson(
        _$CurrentUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fullName': instance.fullName,
      'mobile_number': instance.mobileNumber,
      'email': instance.emailAddress,
      'profilePicture': instance.profilePicture,
    };
