import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';

abstract class IFavouriteRecipeRepository {
  Future<Either<ApiFailure, List<Recipe>>> fetchFavouriteRecipe();
  Future<Either<ApiFailure, Unit>> addToFavourite(String recipeId);
  Future<Either<ApiFailure, Unit>> removeFromFavourite(String recipeId);
}
