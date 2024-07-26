// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeReviewDtoImpl _$$RecipeReviewDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeReviewDtoImpl(
      id: json['_id'] as String? ?? '',
      userId: json['user_id'] as String? ?? '',
      recipeId: json['recipe_id'] as String? ?? '',
      recipeRating: (json['recipe_rating'] as num?)?.toDouble() ?? 0.0,
      recipeReviewerName: json['recipe_reviewer_name'] as String? ?? '',
      recipeReviewComments: json['recipe_review_comments'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$RecipeReviewDtoImplToJson(
        _$RecipeReviewDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.userId,
      'recipe_id': instance.recipeId,
      'recipe_rating': instance.recipeRating,
      'recipe_reviewer_name': instance.recipeReviewerName,
      'recipe_review_comments': instance.recipeReviewComments,
      'created_at': instance.createdAt.toIso8601String(),
    };
