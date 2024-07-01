// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemDtoImpl _$$CartItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$CartItemDtoImpl(
      id: json['_id'] as String? ?? '',
      totalPrice: (intReadValue(json, 'totalPrice') as num?)?.toInt() ?? 0,
      totalDiscount: (json['totalDiscount'] as num?)?.toInt() ?? 0,
      id: json['_id'] as String? ?? '',
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => CartProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$CartItemDtoImplToJson(_$CartItemDtoImpl instance) =>
    <String, dynamic>{
      'totalPrice': instance.totalPrice,
      'totalDiscount': instance.totalDiscount,
      '_id': instance.id,
      'products': instance.products,
    };
