// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDtoImpl _$$RecipeDtoImplFromJson(Map<String, dynamic> json) =>
    _$RecipeDtoImpl(
      id: parseId(json, 'id') as String? ?? '',
      name: json['name'] as String? ?? '',
      cuisine: json['cuisine'] as String? ?? '',
      course: json['course'] as String? ?? '',
      servingSize: json['serving_size'] as String? ?? '',
      nutritionalTable:
          (parseImagesList(json, 'nutritional_table') as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      numRatings: json['num_ratings'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      writeup: json['writeup'] as String? ?? '',
      difficultyLevel: json['difficulty_level'] as String? ?? '',
      numberServings: json['number_servings'] as String? ?? '',
      ingredient: (json['ingredient'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
      equipment: (json['equipment'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
      step: (json['step'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
      isActive: json['is_active'] as bool? ?? false,
      recipeImages: (parseImagesList(json, 'recipeImages') as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      timeRequired: json['time_required'] as String? ?? '',
    );

Map<String, dynamic> _$$RecipeDtoImplToJson(_$RecipeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cuisine': instance.cuisine,
      'course': instance.course,
      'serving_size': instance.servingSize,
      'nutritional_table': instance.nutritionalTable,
      'num_ratings': instance.numRatings,
      'rating': instance.rating,
      'writeup': instance.writeup,
      'difficulty_level': instance.difficultyLevel,
      'number_servings': instance.numberServings,
      'ingredient': instance.ingredient,
      'equipment': instance.equipment,
      'step': instance.step,
      'is_active': instance.isActive,
      'recipeImages': instance.recipeImages,
      'time_required': instance.timeRequired,
    };

_$IngredientDtoImpl _$$IngredientDtoImplFromJson(Map<String, dynamic> json) =>
    _$IngredientDtoImpl(
      ingredientNumber: json['ingredient_number'] as String? ?? '',
      ingredientName: json['ingredient_name'] as String? ?? '',
      ingredientQuantity: json['ingredient_quantity'] as String? ?? '',
    );

Map<String, dynamic> _$$IngredientDtoImplToJson(_$IngredientDtoImpl instance) =>
    <String, dynamic>{
      'ingredient_number': instance.ingredientNumber,
      'ingredient_name': instance.ingredientName,
      'ingredient_quantity': instance.ingredientQuantity,
    };

_$EquipmentDtoImpl _$$EquipmentDtoImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentDtoImpl(
      equipmentName: json['equipment_name'] as String? ?? '',
      equipmentNumber: json['equipment_number'] as String? ?? '',
    );

Map<String, dynamic> _$$EquipmentDtoImplToJson(_$EquipmentDtoImpl instance) =>
    <String, dynamic>{
      'equipment_name': instance.equipmentName,
      'equipment_number': instance.equipmentNumber,
    };

_$RecipeStepDtoImpl _$$RecipeStepDtoImplFromJson(Map<String, dynamic> json) =>
    _$RecipeStepDtoImpl(
      stepNumber: stringReadValue(json, 'step_number') as String? ?? '',
      stepDescription: json['step_description'] as String? ?? '',
    );

Map<String, dynamic> _$$RecipeStepDtoImplToJson(_$RecipeStepDtoImpl instance) =>
    <String, dynamic>{
      'step_number': instance.stepNumber,
      'step_description': instance.stepDescription,
    };
