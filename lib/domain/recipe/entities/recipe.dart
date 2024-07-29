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
    required List<Equipment> equipment,
    required List<RecipeStep> step,
    required List<StringValue> recipeImages,
    required StringValue timeRequired,
  }) = _Recipe;

  factory Recipe.empty() => Recipe(
        id: StringValue(''),
        name: StringValue(''),
        cuisine: StringValue(''),
        course: StringValue(''),
        servingSize: StringValue(''),
        nutritionalTable: StringValue(''),
        numRatings: StringValue(''),
        rating: 0,
        writeup: StringValue(''),
        difficultyLevel: StringValue(''),
        numberServings: StringValue(''),
        ingredient: [],
        equipment: [],
        step: [],
        recipeImages: [],
        timeRequired: StringValue(''),
      );
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
class Equipment with _$Equipment {
  const factory Equipment({
    required StringValue equipmentNumber,
    required StringValue euipmentName,
  }) = _Equipment;
}

@freezed
class RecipeStep with _$RecipeStep {
  const factory RecipeStep({
    required int stepNumber,
    required StringValue stepDescription,
  }) = _RecipeStep;
}
