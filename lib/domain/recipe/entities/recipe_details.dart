import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/entities/recipe_review.dart';
part 'recipe_details.freezed.dart';

@freezed
class RecipeDetails with _$RecipeDetails {
  const factory RecipeDetails({
    required Recipe recipe,
    required double averageRating,
    required List<RecipeReview> reviews,
  }) = _RecipeDetails;

  factory RecipeDetails.empty() => RecipeDetails(
        recipe: Recipe.empty(),
        averageRating: 0,
        reviews: [],
      );
}
