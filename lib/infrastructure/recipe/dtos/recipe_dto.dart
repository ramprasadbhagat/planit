import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
part 'recipe_dto.freezed.dart';
part 'recipe_dto.g.dart';

@freezed
class RecipeDto with _$RecipeDto {
  const RecipeDto._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory RecipeDto({
    @JsonKey(
      defaultValue: '',
      readValue: parseId,
    )
    required String id,
    @JsonKey(
      defaultValue: '',
    )
    required String name,
    @JsonKey(
      defaultValue: '',
    )
    required String cuisine,
    @JsonKey(
      defaultValue: '',
    )
    required String course,
    @JsonKey(
      defaultValue: '',
    )
    required String servingSize,
    @JsonKey(
      defaultValue: [],
      readValue: parseImagesList,
      name: 'nutritional_table',
    )
    required List<String> nutritionalTable,
    @JsonKey(
      defaultValue: '',
    )
    required String numRatings,
    @JsonKey(
      defaultValue: 0.0,
    )
    required double rating,
    @JsonKey(
      defaultValue: '',
    )
    required String writeup,
    @JsonKey(
      defaultValue: '',
    )
    required String difficultyLevel,
    @JsonKey(
      defaultValue: '',
    )
    required String numberServings,
    @JsonKey(
      defaultValue: [],
    )
    required List<Map<String, dynamic>> ingredient,
    @JsonKey(
      defaultValue: [],
    )
    required List<Map<String, dynamic>> equipment,
    @JsonKey(
      defaultValue: [],
    )
    required List<Map<String, dynamic>> step,
    @JsonKey(
      defaultValue: false,
    )
    required bool isActive,
    @JsonKey(
      defaultValue: [],
      name: 'recipeImages',
      readValue: parseImagesList,
    )
    required List<String> recipeImages,
    @JsonKey(defaultValue: '') required String timeRequired,
  }) = _RecipeDto;

  factory RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeDtoFromJson(json);

  Recipe get toDomain => Recipe(
        id: StringValue(id),
        name: StringValue(name),
        cuisine: StringValue(cuisine),
        course: StringValue(course),
        servingSize: StringValue(servingSize),
        nutritionalTable: StringValue(nutritionalTable.firstOrNull ?? ''),
        numRatings: StringValue(numRatings),
        rating: rating,
        writeup: StringValue(writeup),
        difficultyLevel: StringValue(difficultyLevel),
        numberServings: StringValue(numberServings),
        ingredient:
            ingredient.map((e) => IngredientDto.fromJson(e).toDomain).toList(),
        equipment:
            equipment.map((e) => EquipmentDto.fromJson(e).toDomain).toList(),
        step: step.map((e) => RecipeStepDto.fromJson(e).toDomain).toList(),
        recipeImages: recipeImages.map((e) => StringValue(e)).toList(),
        timeRequired: StringValue(timeRequired),
      );
}

List<String> parseImagesList(Map json, String key) {
  if (json[key] is List) {
    final images = (json[key] as List).whereType<String>().toList();
    return images;
  }
  return [];
}

@freezed
class IngredientDto with _$IngredientDto {
  const IngredientDto._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory IngredientDto({
    @JsonKey(
      defaultValue: '',
    )
    required String ingredientNumber,
    @JsonKey(
      defaultValue: '',
    )
    required String ingredientName,
    @JsonKey(
      defaultValue: '',
    )
    required String ingredientQuantity,
  }) = _IngredientDto;

  factory IngredientDto.fromJson(Map<String, dynamic> json) =>
      _$IngredientDtoFromJson(json);

  Ingredient get toDomain => Ingredient(
        ingredientNumber: StringValue(ingredientNumber),
        ingredientName: StringValue(ingredientName),
        ingredientQuantity: StringValue(ingredientQuantity),
      );
}

@freezed
class EquipmentDto with _$EquipmentDto {
  const EquipmentDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory EquipmentDto({
    @JsonKey(
      defaultValue: '',
    )
    required String equipmentName,
    @JsonKey(
      defaultValue: '',
    )
    required String equipmentNumber,
  }) = _EquipmentDto;

  factory EquipmentDto.fromJson(Map<String, dynamic> json) =>
      _$EquipmentDtoFromJson(json);

  Equipment get toDomain => Equipment(
        equipmentNumber: StringValue(equipmentNumber),
        euipmentName: StringValue(equipmentName),
      );
}

@freezed
class RecipeStepDto with _$RecipeStepDto {
  const RecipeStepDto._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory RecipeStepDto({
    @JsonKey(
      defaultValue: '',
      readValue: stringReadValue,
    )
    required String stepNumber,
    @JsonKey(
      defaultValue: '',
    )
    required String stepDescription,
  }) = _RecipeStepDto;

  factory RecipeStepDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeStepDtoFromJson(json);

  RecipeStep get toDomain => RecipeStep(
        stepNumber: stepNumber,
        stepDescription: StringValue(stepDescription),
      );
}

Object parseId(Map data, String key) {
  if (data['_id'] != null) return data['_id'];
  if (data['id'] != null) return data['id'];
  return data[key];
}

String stringReadValue(Map data, String key) => data[key].toString();
