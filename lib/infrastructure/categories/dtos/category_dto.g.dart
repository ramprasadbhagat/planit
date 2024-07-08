// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      categoryName: json['categoryName'] as String? ?? '',
      categoryImages: (json['categoryImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      subcategories: (json['subcategories'] as List<dynamic>?)
              ?.map((e) => SubCategoryDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'categoryImages': instance.categoryImages,
      'subcategories': instance.subcategories,
      'type': instance.type,
    };
