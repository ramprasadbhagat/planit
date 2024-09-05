import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/entities/recipe_details.dart';
import 'package:planit/domain/recipe/entities/recipe_response.dart';

abstract class IRecipeRepository {
  Future<Either<ApiFailure, RecipeResponse>> fetchRecipes({
    int pageSize = 10,
    int pageNumber = 1,
    String search = '',
  });
  Future<Either<ApiFailure, List<Recipe>>> searchRecipes({
    required String searchKey,
  });
  Future<Either<ApiFailure, RecipeDetails>> fetchRecipeById(String id);
  Future<Either<ApiFailure, Unit>> addRecipeReview({
    required String recipeId,
    required String recipeRating,
    required String recipeReviewerName,
    required String recipeReviewCommments,
  });
}
