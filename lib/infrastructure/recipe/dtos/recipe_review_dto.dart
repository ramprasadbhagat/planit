import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/recipe/entities/recipe_review.dart';
part 'recipe_review_dto.freezed.dart';
part 'recipe_review_dto.g.dart';

@freezed
class RecipeReviewDto with _$RecipeReviewDto {
  const RecipeReviewDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory RecipeReviewDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String userId,
    @JsonKey(defaultValue: '') required String recipeId,
    @JsonKey(defaultValue: 0.0) required double recipeRating,
    @JsonKey(defaultValue: '') required String recipeReviewerName,
    @JsonKey(defaultValue: '') required String recipeReviewComments,
    required DateTime createdAt,
  }) = _RecipeReviewDto;

  factory RecipeReviewDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeReviewDtoFromJson(json);

  RecipeReview get toDomain => RecipeReview(
        id: StringValue(id),
        userId: StringValue(userId),
        recipeId: StringValue(recipeId),
        recipeRating: recipeRating,
        recipeReviewerName: StringValue(recipeReviewerName),
        recipeReviewComments: StringValue(recipeReviewComments),
        createdAt: createdAt,
      );
}
