import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/recipe/entities/recipe_response.dart';
import 'package:planit/infrastructure/recipe/dtos/recipe_dto.dart';
part 'recipe_response_dto.freezed.dart';
part 'recipe_response_dto.g.dart';

@freezed
class RecipeResponseDto with _$RecipeResponseDto {
  const RecipeResponseDto._();

  const factory RecipeResponseDto({
    @JsonKey(defaultValue: <Map<String, dynamic>>[])
    required List<Map<String, dynamic>> items,
    @JsonKey(defaultValue: 0) required int totalCount,
  }) = _RecipeResponseDto;

  factory RecipeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeResponseDtoFromJson(json);

  RecipeResponse get toDomain => RecipeResponse(
        recipes: items.map((e) => RecipeDto.fromJson(e).toDomain).toList(),
        itemCounts: totalCount,
      );
}
