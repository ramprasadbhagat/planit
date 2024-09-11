// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponDtoImpl _$$CouponDtoImplFromJson(Map<String, dynamic> json) =>
    _$CouponDtoImpl(
      id: json['id'] as String? ?? '',
      couponCode: json['couponCode'] as String? ?? '',
      rate: (intReadValue(json, 'rate') as num?)?.toInt() ?? 0,
      shortDescription: json['shortDescription'] as String? ?? '',
      type: json['type'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$$CouponDtoImplToJson(_$CouponDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'couponCode': instance.couponCode,
      'rate': instance.rate,
      'shortDescription': instance.shortDescription,
      'type': instance.type,
      'isActive': instance.isActive,
    };
