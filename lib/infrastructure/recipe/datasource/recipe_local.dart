import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/entities/recipe_details.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_details_dto.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_dto.dart';

class RecipeLocalDataSource {
  const RecipeLocalDataSource();
  Future<List<Recipe>> fetchAllRecipes() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/recipes.json'),
    );

    final recipes = res['items'];

    return List.from(recipes)
        .map((e) => RecipeDto.fromJson(e).toDomain)
        .toList();
  }

  Future<RecipeDetails> fetchRecipeDetails() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/recipe_details.json'),
    );

    return RecipeDetailsDto.fromJson(res).toDomain;
  }
}
