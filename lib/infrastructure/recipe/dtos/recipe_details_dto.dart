import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/recipe/entities/recipe_details.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_dto.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_review_dto.dart';
part 'recipe_details_dto.freezed.dart';
part 'recipe_details_dto.g.dart';

@freezed
class RecipeDetailsDto with _$RecipeDetailsDto {
  const RecipeDetailsDto._();
  const factory RecipeDetailsDto({
    @JsonKey(defaultValue: {}, name: 'Recipe')
    required Map<String, dynamic> recipe,
    @JsonKey(
      defaultValue: [],
      readValue: parseReviews,
    )
    required List<Map<String, dynamic>> reviews,
    @JsonKey(
      defaultValue: 0.0,
      readValue: parseAverageRating,
    )
    required double averageRating,
  }) = _RecipeDetailsDto;

  factory RecipeDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsDtoFromJson(json);

  RecipeDetails get toDomain => RecipeDetails(
        recipe: RecipeDto.fromJson(recipe).toDomain,
        averageRating: averageRating,
        reviews:
            reviews.map((e) => RecipeReviewDto.fromJson(e).toDomain).toList(),
      );
}

dynamic parseReviews(Map data, String key) {
  return data['Recipe_Review']['Reviews'];
}

dynamic parseAverageRating(Map data, String key) {
  return data['Recipe_Review']['Average_Rating'];
}
