// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductDtoImpl _$$CartProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$CartProductDtoImpl(
      id: json['id'] as String? ?? '',
      productId: json['product_id'] as String? ?? '',
      image: json['image'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      attributeItemId: json['attributeItemId'] as String? ?? '',
      itemPrice: stringReadValue(json, 'itemPrice') as String? ?? '0.00',
      quantity: (intReadValue(json, 'quantity') as num?)?.toInt() ?? 0,
      totalPrice: (intReadValue(json, 'total_price') as num?)?.toInt() ?? 0,
      attributeItemName: json['attributeItemName'] as String? ?? '',
      attributeName: json['attributeName'] as String? ?? '',
      finalPrice:
          (JsonReadValueHelper.roundToTwoDecimalPlaces(json, 'finalPrice')
                      as num?)
                  ?.toDouble() ??
              0.0,
      listPrice: (JsonReadValueHelper.roundToTwoDecimalPlaces(json, 'listPrice')
                  as num?)
              ?.toDouble() ??
          0.0,
      discountPercentage:
          (json['discountPercentage'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CartProductDtoImplToJson(
        _$CartProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'image': instance.image,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'attributeItemId': instance.attributeItemId,
      'itemPrice': instance.itemPrice,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
      'attributeItemName': instance.attributeItemName,
      'attributeName': instance.attributeName,
      'finalPrice': instance.finalPrice,
      'listPrice': instance.listPrice,
      'discountPercentage': instance.discountPercentage,
    };
