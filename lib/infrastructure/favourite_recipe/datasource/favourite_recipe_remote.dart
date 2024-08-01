import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_dto.dart';
import 'package:planit/utils/storage_service.dart';

class FavouriteRecipeRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  FavouriteRecipeRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });
  Future<List<Recipe>> fetchFavouriteRecipes() async {
    final userId = storageService.getUserId();

    final res = await httpService.request(
      method: 'GET',
      url: 'recipefavourites/$userId',
    );
    _exceptionChecker(res: res);

    final recipes = List.from(res.data)
        .map((e) => List.from(e['recipe']).firstOrNull)
        .map((e) => RecipeDto.fromJson(e).toDomain)
        .toList();

    return recipes;
  }

  Future<Unit> addToFavourite(String recipeId) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'recipefavourites',
      data: {
        'user_id': userId,
        'recipe_id': recipeId,
      },
    );

    _exceptionChecker(res: res);

    return unit;
  }

  Future<Unit> removeFromFavourite(String recipeId) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'recipefavourites/removeRecipe',
      data: {
        'user_id': userId,
        'recipe_id': recipeId,
      },
    );

    _exceptionChecker(res: res);

    return unit;
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}
