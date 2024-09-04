import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
part 'recipe_response.freezed.dart';

@freezed
class RecipeResponse with _$RecipeResponse {
  const factory RecipeResponse({
    required List<Recipe> recipes,
    required int itemCounts,
  }) = _RecipeResponse;
}
