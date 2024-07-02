// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistDtoImpl _$$WishlistDtoImplFromJson(Map<String, dynamic> json) =>
    _$WishlistDtoImpl(
      id: json['_id'] as String? ?? '',
      userId: json['user_id'] as String? ?? '',
      productId: json['product_id'] as String? ?? '',
      attributeItemProductID: json['attributeItemProductID'] as String? ?? '',
      attributeItemId: json['attributeItemId'] as String? ?? '',
      product: (json['product'] as List<dynamic>?)
              ?.map(
                  (e) => WishlistProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$WishlistDtoImplToJson(_$WishlistDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.userId,
      'product_id': instance.productId,
      'attributeItemProductID': instance.attributeItemProductID,
      'attributeItemId': instance.attributeItemId,
      'product': instance.product,
    };
