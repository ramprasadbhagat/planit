// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BestSellerProductDtoImpl _$$BestSellerProductDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BestSellerProductDtoImpl(
      productId: json['productId'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      productImage: json['productImage'] as String? ?? '',
      attributeItemId: json['attributeItemId'] as String? ?? '',
      stock: (json['stock'] as num?)?.toInt() ?? 0,
      backOrder: json['backOrder'] as bool? ?? false,
    );

Map<String, dynamic> _$$BestSellerProductDtoImplToJson(
        _$BestSellerProductDtoImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productImage': instance.productImage,
      'attributeItemId': instance.attributeItemId,
      'stock': instance.stock,
      'backOrder': instance.backOrder,
    };
