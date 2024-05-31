// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistProductDtoImpl _$$WishlistProductDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistProductDtoImpl(
      id: json['_id'] as String? ?? '',
      categoryId: json['categoryId'] as String? ?? '',
      subcategoryId: json['subcategoryId'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      productMRP: json['productMRP'] as String? ?? '',
      productReview: json['productReview'] as String? ?? '',
      productRating: json['productRating'] as String? ?? '',
      productDiscount: json['productDiscount'] as String? ?? '',
      sku: json['sku'] as String? ?? '',
      skuPrice: json['sku_price'] as String? ?? '',
      skuPacksize: json['sku_packsize'] as String? ?? '',
      skuContent: json['sku_content'] as String? ?? '',
      skuInventory: json['sku_inventory'] as String? ?? '',
      skuVendorId: json['sku_vendorId'] as String? ?? '',
      skuVendorInfo: json['sku_vendorInfo'] as String? ?? '',
      ingredientsList: (json['ingredientsList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      nutritionalInformation: json['nutritionalInformation'] as String? ?? '',
      isHighlighted: json['isHighlighted'] as bool? ?? false,
      isQuickPick: json['isQuickPick'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$WishlistProductDtoImplToJson(
        _$WishlistProductDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subcategoryId': instance.subcategoryId,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productMRP': instance.productMRP,
      'productReview': instance.productReview,
      'productRating': instance.productRating,
      'productDiscount': instance.productDiscount,
      'sku': instance.sku,
      'sku_price': instance.skuPrice,
      'sku_packsize': instance.skuPacksize,
      'sku_content': instance.skuContent,
      'sku_inventory': instance.skuInventory,
      'sku_vendorId': instance.skuVendorId,
      'sku_vendorInfo': instance.skuVendorInfo,
      'ingredientsList': instance.ingredientsList,
      'nutritionalInformation': instance.nutritionalInformation,
      'isHighlighted': instance.isHighlighted,
      'isQuickPick': instance.isQuickPick,
      'isDeleted': instance.isDeleted,
      'isActive': instance.isActive,
    };
