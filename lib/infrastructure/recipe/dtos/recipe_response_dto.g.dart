// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeResponseDtoImpl _$$RecipeResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeResponseDtoImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RecipeResponseDtoImplToJson(
        _$RecipeResponseDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalCount': instance.totalCount,
    };
