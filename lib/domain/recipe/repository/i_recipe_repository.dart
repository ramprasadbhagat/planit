import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/entities/recipe_details.dart';

abstract class IRecipeRepository {
  Future<Either<ApiFailure, List<Recipe>>> fetchAllRecipes();
  Future<Either<ApiFailure, RecipeDetails>> fetchRecipeById(String id);
  Future<Either<ApiFailure, Unit>> addRecipeReview({
    required String recipeId,
    required String recipeRating,
    required String recipeReviewerName,
    required String recipeReviewCommments,
  });
}
