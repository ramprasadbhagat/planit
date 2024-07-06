// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimilarProductDtoImpl _$$SimilarProductDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SimilarProductDtoImpl(
      id: json['id'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      sku: json['sku'] as String? ?? '',
      skuPrice: json['sku_price'] as String? ?? '',
      skuPacksize: json['sku_packsize'] as String? ?? '',
      skuContent: json['sku_content'] as String? ?? '',
      startingPrice: stringReadValue(json, 'startingPrice') as String? ?? '',
      productMRP: json['productMRP'] as String? ?? '',
      productReview: json['productReview'] as String? ?? '',
      productRating: json['productRating'] as String? ?? '',
      ingredientsList: (json['ingredientsList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      nutritionalInformation: json['nutritionalInformation'] as String? ?? '',
      isDeleted: json['isDeleted'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? false,
      isHighlighted: json['isHighlighted'] as bool? ?? false,
      isQuickPick: json['isQuickPick'] as bool? ?? false,
      discount: json['discount'] as String? ?? '',
      attributeName: json['attributeName'] as String? ?? '',
      attributeItem: json['attributeItem'] as String? ?? '',
      attributeItemProductId: json['attributeItemProductId'] as String? ?? '',
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
      productImages: (json['productImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SimilarProductDtoImplToJson(
        _$SimilarProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'sku': instance.sku,
      'sku_price': instance.skuPrice,
      'sku_packsize': instance.skuPacksize,
      'sku_content': instance.skuContent,
      'startingPrice': instance.startingPrice,
      'productMRP': instance.productMRP,
      'productReview': instance.productReview,
      'productRating': instance.productRating,
      'ingredientsList': instance.ingredientsList,
      'nutritionalInformation': instance.nutritionalInformation,
      'isDeleted': instance.isDeleted,
      'isActive': instance.isActive,
      'isHighlighted': instance.isHighlighted,
      'isQuickPick': instance.isQuickPick,
      'discount': instance.discount,
      'attributeName': instance.attributeName,
      'attributeItem': instance.attributeItem,
      'attributeItemProductId': instance.attributeItemProductId,
      'price': instance.price,
      'productImages': instance.productImages,
    };
