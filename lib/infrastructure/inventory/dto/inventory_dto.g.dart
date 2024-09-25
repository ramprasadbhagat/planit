// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryDtoImpl _$$InventoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$InventoryDtoImpl(
      attributeName: json['attributeName'] as String? ?? '',
      attributeItemName: json['attributeItemName'] as String? ?? '',
      attributeItemId: json['attributeItemId'] as String? ?? '',
      listPrice: (JsonReadValueHelper.roundToTwoDecimalPlaces(json, 'listPrice')
                  as num?)
              ?.toDouble() ??
          0,
      finalPrice:
          (JsonReadValueHelper.roundToTwoDecimalPlaces(json, 'finalPrice')
                      as num?)
                  ?.toDouble() ??
              0,
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble() ?? 0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$InventoryDtoImplToJson(_$InventoryDtoImpl instance) =>
    <String, dynamic>{
      'attributeName': instance.attributeName,
      'attributeItemName': instance.attributeItemName,
      'attributeItemId': instance.attributeItemId,
      'listPrice': instance.listPrice,
      'finalPrice': instance.finalPrice,
      'discountPercentage': instance.discountPercentage,
      'quantity': instance.quantity,
    };
