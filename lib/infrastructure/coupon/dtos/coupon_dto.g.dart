// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponDtoImpl _$$CouponDtoImplFromJson(Map<String, dynamic> json) =>
    _$CouponDtoImpl(
      id: json['id'] as String? ?? '',
      couponCode: json['couponCode'] as String? ?? '',
      amount: json['amount'] as String? ?? '',
      shortDescription: json['shortDescription'] as String? ?? '',
    );

Map<String, dynamic> _$$CouponDtoImplToJson(_$CouponDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'couponCode': instance.couponCode,
      'amount': instance.amount,
      'shortDescription': instance.shortDescription,
    };
