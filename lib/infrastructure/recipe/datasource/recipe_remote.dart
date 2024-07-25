import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_dto.dart';

class RecipeRemoteDataSource {
  final HttpService httpService;

  RecipeRemoteDataSource({required this.httpService});

  Future<List<Recipe>> fetchAllRecipes() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'recipes',
    );

    _exceptionChecker(res: res);
    final recipes = res.data['items'];

    return List.from(recipes)
        .map((e) => RecipeDto.fromJson(e).toDomain)
        .toList();
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
