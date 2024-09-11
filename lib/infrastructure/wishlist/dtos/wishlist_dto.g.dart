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
      attributeItemId: json['attributeItemId'] as String? ?? '',
      productRating: json['productRating'] as String? ?? '',
      quantity: json['quantity'] as String? ?? '',
      price: (intReadValue(json, 'price') as num?)?.toInt() ?? 0,
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
      'attributeItemId': instance.attributeItemId,
      'productRating': instance.productRating,
      'quantity': instance.quantity,
      'price': instance.price,
      'product': instance.product,
    };
