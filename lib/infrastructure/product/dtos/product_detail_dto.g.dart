// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailDtoImpl _$$ProductDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailDtoImpl(
      productId: json['id'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      name: json['productName'] as String? ?? '',
      startingPrice:
          (intReadValue(json, 'startingPrice') as num?)?.toInt() ?? 0,
      price: priceReadValue(json, 'price') as Map<String, dynamic>? ?? {},
      productImages:
          (parseProductImages(json, 'productImages') as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      backOrder: json['backOrder'] as bool? ?? false,
      inventoryList:
          (JsonReadValueHelper.readList(json, 'inventory') as List<dynamic>?)
                  ?.map((e) => InventoryDto.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
    );

Map<String, dynamic> _$$ProductDetailDtoImplToJson(
        _$ProductDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'productDescription': instance.productDescription,
      'productName': instance.name,
      'startingPrice': instance.startingPrice,
      'price': instance.price,
      'productImages': instance.productImages,
      'backOrder': instance.backOrder,
      'inventory': instance.inventoryList,
    };
