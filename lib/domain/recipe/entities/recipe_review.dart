import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'recipe_review.freezed.dart';

@freezed
class RecipeReview with _$RecipeReview {
  const factory RecipeReview({
    required StringValue id,
    required StringValue userId,
    required StringValue recipeId,
    required double recipeRating,
    required StringValue recipeReviewerName,
    required StringValue recipeReviewComments,
    required DateTime createdAt,
  }) = _RecipeReview;
}
