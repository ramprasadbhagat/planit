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
      productImages: (json['productImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$ProductDetailDtoImplToJson(
        _$ProductDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'productDescription': instance.productDescription,
      'productImages': instance.productImages,
    };
