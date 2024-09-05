import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/entities/recipe_details.dart';
import 'package:planit/domain/recipe/entities/recipe_response.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_details_dto.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_dto.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_response_dto.dart';
import 'package:planit/utils/storage_service.dart';

class RecipeRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;
  RecipeRemoteDataSource({
    required this.storageService,
    required this.httpService,
  });

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

  Future<RecipeResponse> fetchRecipes({
    int pageSize = 10,
    int pageNumber = 1,
    String search = '',
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'recipes?pageSize=$pageSize&pageNumber=$pageNumber&search=$search',
    );

    _exceptionChecker(res: res);
    // final recipes = res.data['items'];
    final recipeResponse = RecipeResponseDto.fromJson(res.data).toDomain;

    return recipeResponse;

    // return List.from(recipes)
    //     .map((e) => RecipeDto.fromJson(e).toDomain)
    //     .toList();
  }

  Future<List<Recipe>> searchRecipes(String searchKey) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'recipes/?search=$searchKey',
    );

    _exceptionChecker(res: res);
    final recipes = res.data['items'];

    return List.from(recipes)
        .map((e) => RecipeDto.fromJson(e).toDomain)
        .toList();
  }

  Future<RecipeDetails> fetchRecipeDetails(String id) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'recipes/$id',
    );

    _exceptionChecker(res: res);
    final recipe = res.data;

    return RecipeDetailsDto.fromJson(recipe).toDomain;
  }

  Future<Unit> addRecipeReview({
    required String recipeId,
    required String recipeRating,
    required String recipeReviewerName,
    required String recipeReviewCommments,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'recipeReview',
      data: {
        'user_id': userId,
        'recipe_id': recipeId,
        'recipe_rating': recipeRating,
        'recipe_reviewer_name': recipeReviewerName,
        'recipe_review_comments': recipeReviewCommments,
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
