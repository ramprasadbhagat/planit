// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeDtoImpl _$$ProductAttributeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductAttributeDtoImpl(
      attributeItemId: json['attributeItemId'] as String? ?? '',
      attributeItemProductId: json['attributeItemProductId'] as String? ?? '',
      attributeItemValue:
          parseAttributeItemValue(json, 'attributeItemValue') as String? ?? '',
      attributeItemName:
          parseAttributeItemName(json, 'attributeItemName') as String? ?? '',
      price: stringReadValue(json, 'price') as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProductAttributeDtoImplToJson(
        _$ProductAttributeDtoImpl instance) =>
    <String, dynamic>{
      'attributeItemId': instance.attributeItemId,
      'attributeItemProductId': instance.attributeItemProductId,
      'attributeItemValue': instance.attributeItemValue,
      'attributeItemName': instance.attributeItemName,
      'price': instance.price,
      'quantity': instance.quantity,
    };
