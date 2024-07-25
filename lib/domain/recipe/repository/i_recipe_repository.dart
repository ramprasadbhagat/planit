import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';

abstract class IRecipeRepository {
  Future<Either<ApiFailure, List<Recipe>>> fetchAllRecipes();
}
