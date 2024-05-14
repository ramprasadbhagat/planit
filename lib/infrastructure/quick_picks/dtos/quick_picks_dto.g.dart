// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_picks_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuickPicksDtoImpl _$$QuickPicksDtoImplFromJson(Map<String, dynamic> json) =>
    _$QuickPicksDtoImpl(
      id: json['id'] as String? ?? '',
      categoryId: json['categoryId'] as String? ?? '',
      subcategoryId: json['subcategoryId'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      sku: json['sku'] as String? ?? '',
      skuPrice: json['sku_price'] as String? ?? '',
      skuPacksize: json['sku_packsize'] as String? ?? '',
      skuContent: json['sku_content'] as String? ?? '',
      startingPrice: json['startingPrice'] as String? ?? '',
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
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
      productImages: (json['productImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$QuickPicksDtoImplToJson(_$QuickPicksDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'subcategoryId': instance.subcategoryId,
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
      'price': instance.price,
      'productImages': instance.productImages,
    };
