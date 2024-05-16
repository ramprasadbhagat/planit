// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      productId: json['id'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      productImages: (json['productImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      skuPrice: intReadValue(json, 'sku_price') as int? ?? 0,
      startingPrice: intReadValue(json, 'startingPrice') as int? ?? 0,
      attributeItem: json['attributeItem'] as String? ?? '',
      attributeItemProductId: json['attributeItemProductId'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'productName': instance.productName,
      'productImages': instance.productImages,
      'sku_price': instance.skuPrice,
      'startingPrice': instance.startingPrice,
      'attributeItem': instance.attributeItem,
      'attributeItemProductId': instance.attributeItemProductId,
    };
