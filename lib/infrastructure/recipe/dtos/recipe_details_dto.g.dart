// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDetailsDtoImpl _$$RecipeDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeDetailsDtoImpl(
      recipe: json['Recipe'] as Map<String, dynamic>? ?? {},
      reviews: (parseReviews(json, 'reviews') as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
      averageRating:
          (parseAverageRating(json, 'averageRating') as num?)?.toDouble() ??
              0.0,
    );

Map<String, dynamic> _$$RecipeDetailsDtoImplToJson(
        _$RecipeDetailsDtoImpl instance) =>
    <String, dynamic>{
      'Recipe': instance.recipe,
      'reviews': instance.reviews,
      'averageRating': instance.averageRating,
    };
