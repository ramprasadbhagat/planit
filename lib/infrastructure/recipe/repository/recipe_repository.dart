import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/entities/recipe_details.dart';
import 'package:planit/domain/recipe/entities/recipe_response.dart';
import 'package:planit/domain/recipe/repository/i_recipe_repository.dart';
import 'package:planit/infrastructure/recipe/datasource/recipe_local.dart';
import 'package:planit/infrastructure/recipe/datasource/recipe_remote.dart';

class RecipeRepository extends IRecipeRepository {
  final Config config;
  final RecipeLocalDataSource localDataSource;
  final RecipeRemoteDataSource remoteDataSource;

  RecipeRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<ApiFailure, RecipeResponse>> fetchRecipes({
    int pageSize = 10,
    int pageNumber = 1,
    String search = '',
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.fetchRecipes();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }

    try {
      final recipes = await remoteDataSource.fetchRecipes(
        pageNumber: pageNumber,
        pageSize: pageSize,
        search: search,
      );

      return Right(recipes);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, RecipeDetails>> fetchRecipeById(String id) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.fetchRecipeDetails();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final recipeDetails = await remoteDataSource.fetchRecipeDetails(id);

      return Right(recipeDetails);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addRecipeReview({
    required String recipeId,
    required String recipeRating,
    required String recipeReviewerName,
    required String recipeReviewCommments,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        await localDataSource.fetchRecipeDetails();

        return const Right(unit);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final recipeDetails = await remoteDataSource.addRecipeReview(
        recipeId: recipeId,
        recipeRating: recipeRating,
        recipeReviewerName: recipeReviewerName,
        recipeReviewCommments: recipeReviewCommments,
      );

      return Right(recipeDetails);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Recipe>>> searchRecipes({
    required String searchKey,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.fetchAllRecipes();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }

    try {
      final recipes = await remoteDataSource.searchRecipes(searchKey);

      return Right(recipes);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
