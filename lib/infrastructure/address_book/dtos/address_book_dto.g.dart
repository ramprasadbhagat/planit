// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressBookDtoImpl _$$AddressBookDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressBookDtoImpl(
      id: idFromJson(json, 'id') as String? ?? '',
      userId: json['user_id'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      pincode: json['pincode'] as String? ?? '',
      address: json['address'] as String? ?? '',
      isDefault: (json['isDefault'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AddressBookDtoImplToJson(
        _$AddressBookDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'pincode': instance.pincode,
      'address': instance.address,
      'isDefault': instance.isDefault,
    };
