// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoryDtoImpl _$$SubCategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryDtoImpl(
      id: json['_id'] as String? ?? '',
      categoryName: json['categoryName'] as String? ?? '',
      categoryDescription: json['categoryDescription'] as String? ?? '',
      categoryImages: (json['categoryImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$SubCategoryDtoImplToJson(
        _$SubCategoryDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryName': instance.categoryName,
      'categoryDescription': instance.categoryDescription,
      'categoryImages': instance.categoryImages,
    };
