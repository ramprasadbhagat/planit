import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_dto.dart';

class FavouriteRecipeLocalDataSource {
  const FavouriteRecipeLocalDataSource();
  Future<List<Recipe>> fetchFavouriteRecipes() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/favourite_recipes.json'),
    );

    final recipes = List.from(res.data)
        .map((e) => List.from(e['recipe']).firstOrNull)
        .map((e) => RecipeDto.fromJson(e).toDomain)
        .toList();
    return recipes;
  }

  Future<Unit> addToFavourite(String recipeId) async {
    await Future.delayed(const Duration(seconds: 1));

    return unit;
  }

  Future<Unit> removeFromFavourite(String recipeId) async {
    await Future.delayed(const Duration(seconds: 1));

    return unit;
  }
}
