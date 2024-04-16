import 'package:freezed_annotation/freezed_annotation.dart';

part 'hot_recipe.freezed.dart';

@freezed
class HotRecipe with _$HotRecipe {
  factory HotRecipe({
    required String title,
    required String subTitle,
    required String image,
    required double rating,
  }) = _HotRecipe;
}
