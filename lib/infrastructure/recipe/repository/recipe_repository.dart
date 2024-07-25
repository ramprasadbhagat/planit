import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
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
  Future<Either<ApiFailure, List<Recipe>>> fetchAllRecipes() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.fetchAllRecipes();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }

    try {
      final products = await remoteDataSource.fetchAllRecipes();

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
