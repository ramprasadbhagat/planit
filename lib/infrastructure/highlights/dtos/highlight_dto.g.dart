// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighlightDtoImpl _$$HighlightDtoImplFromJson(Map<String, dynamic> json) =>
    _$HighlightDtoImpl(
      id: json['id'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      sku: json['sku'] as String? ?? '',
      skuPrice: json['sku_price'] as String? ?? '',
      skuPacksize: json['sku_packsize'] as String? ?? '',
      skuContent: json['sku_content'] as String? ?? '',
      productMRP: json['productMRP'] as String? ?? '',
      startingPrice:
          (intReadValue(json, 'startingPrice') as num?)?.toInt() ?? 0,
      productReview: json['productReview'] as String? ?? '',
      productRating: json['productRating'] as String? ?? '',
      productDiscount: json['productDiscount'] as String? ?? '',
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
      attributeItemId: json['attributeItemId'] as String? ?? '',
      inventoryList:
          (JsonReadValueHelper.readList(json, 'inventory') as List<dynamic>?)
                  ?.map((e) => InventoryDto.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
      productImages: (json['productImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      backOrder: json['backOrder'] as bool? ?? false,
    );

Map<String, dynamic> _$$HighlightDtoImplToJson(_$HighlightDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'sku': instance.sku,
      'sku_price': instance.skuPrice,
      'sku_packsize': instance.skuPacksize,
      'sku_content': instance.skuContent,
      'productMRP': instance.productMRP,
      'startingPrice': instance.startingPrice,
      'productReview': instance.productReview,
      'productRating': instance.productRating,
      'productDiscount': instance.productDiscount,
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
      'attributeItemId': instance.attributeItemId,
      'inventory': instance.inventoryList,
      'productImages': instance.productImages,
      'backOrder': instance.backOrder,
    };
