// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complain_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplainDtoImpl _$$ComplainDtoImplFromJson(Map<String, dynamic> json) =>
    _$ComplainDtoImpl(
      id: json['_id'] as String? ?? '',
      userId: json['user_id'] as String? ?? '',
      orderId: json['order_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      complainContent: json['complainContent'] as String? ?? '',
      complainImages: (json['complainImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$ComplainDtoImplToJson(_$ComplainDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.userId,
      'order_id': instance.orderId,
      'name': instance.name,
      'email': instance.email,
      'complainContent': instance.complainContent,
      'complainImages': instance.complainImages,
      'created_at': instance.createdAt,
    };
