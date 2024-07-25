import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'recipe.freezed.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required StringValue id,
    required StringValue name,
    required StringValue cuisine,
    required StringValue course,
    required StringValue servingSize,
    required StringValue nutritionalTable,
    required StringValue numRatings,
    required double rating,
    required StringValue writeup,
    required StringValue difficultyLevel,
    required StringValue numberServings,
    required List<Ingredient> ingredient,
    required List<Ingredient> equipment,
    required List<RecipeStep> step,
    required List<StringValue> recipeImages,
    required StringValue timeRequired,
  }) = _Recipe;
}

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required StringValue ingredientNumber,
    required StringValue ingredientName,
    required StringValue ingredientQuantity,
  }) = _Ingredient;
}

@freezed
class RecipeStep with _$RecipeStep {
  const factory RecipeStep({
    required int stepNumber,
    required StringValue stepDescription,
  }) = _RecipeStep;
}
