// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceDtoImpl _$$PriceDtoImplFromJson(Map<String, dynamic> json) =>
    _$PriceDtoImpl(
      price: stringReadValue(json, 'price') as String? ?? '',
      quantity: json['quantity'] as int? ?? 0,
    );

Map<String, dynamic> _$$PriceDtoImplToJson(_$PriceDtoImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
    };
