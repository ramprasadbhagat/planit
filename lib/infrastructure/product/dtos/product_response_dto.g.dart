// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseDtoImpl _$$ProductResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseDtoImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProductResponseDtoImplToJson(
        _$ProductResponseDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalCount': instance.totalCount,
    };
