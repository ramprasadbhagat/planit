import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_recipe.freezed.dart';

@freezed
class TrendingRecipe with _$TrendingRecipe {
  factory TrendingRecipe({
    required String title,
    required String subTitle,
    required String image,
    required double rating,
    required int preparationTime,
    required String level,
  }) = _TrendingRecipe;
}
