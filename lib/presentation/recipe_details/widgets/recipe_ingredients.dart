import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class RecipeIngredients extends StatelessWidget {
  final Recipe recipe;
  const RecipeIngredients({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            children: [
              SvgPicture.asset(
                SvgImage.recipeIngredientsIcon,
                width: 18,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Recipe Ingredients',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 18,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            SvgImage.foodPrepareIcon,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Ingredients\' Name',
                            style: textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            SvgImage.quantityIcon,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Quantity',
                            style: textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ...recipe.ingredient.map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            '${e.ingredientNumber.getValue()}. ${e.ingredientName.getValue()}',
                            style: textTheme.titleSmall?.copyWith(
                              color: AppColors.grey4,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        Flexible(
                          flex: 1,
                          child: Text(
                            e.ingredientQuantity.getValue(),
                            style: textTheme.titleSmall?.copyWith(
                              color: AppColors.grey4,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
