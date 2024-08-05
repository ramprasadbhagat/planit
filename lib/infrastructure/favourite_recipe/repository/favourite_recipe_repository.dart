import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/favourite_recipe/repository/i_favourite_recipe.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/infrastructure/favourite_recipe/datasource/favourite_recipe_local.dart';
import 'package:planit/infrastructure/favourite_recipe/datasource/favourite_recipe_remote.dart';

class FavouriteRecipeRepository extends IFavouriteRecipeRepository {
  final Config config;
  final FavouriteRecipeRemoteDataSource remoteDataSource;
  final FavouriteRecipeLocalDataSource localDataSource;

  FavouriteRecipeRepository({
    required this.remoteDataSource,
    required this.config,
    required this.localDataSource,
  });
  @override
  Future<Either<ApiFailure, Unit>> addToFavourite(String recipeId) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.addToFavourite(recipeId);

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final recipes = await remoteDataSource.addToFavourite(recipeId);

      return Right(recipes);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Recipe>>> fetchFavouriteRecipe() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.fetchFavouriteRecipes();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final recipes = await remoteDataSource.fetchFavouriteRecipes();

      return Right(recipes);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> removeFromFavourite(String recipeId) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.removeFromFavourite(recipeId);

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final recipes = await remoteDataSource.removeFromFavourite(recipeId);

      return Right(recipes);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
