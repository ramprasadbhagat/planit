import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class HotRecipeCard extends StatelessWidget {
  final Recipe recipe;
  const HotRecipeCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: InkWell(
        onTap: () {
          context.router.navigate(
            RecipeDetailsRoute(
              recipe: recipe,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (recipe.recipeImages.isNotEmpty)
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: CachedNetworkImage(
                    imageUrl: recipe.recipeImages.first.getOrDefaultValue(''),
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) {
                      return Image.asset(
                        PngImage.placeholder,
                        width: 80,
                        height: 80,
                      );
                    },
                  ),
                )
              else
                Image.asset(
                  PngImage.placeholder,
                  width: 80,
                  height: 80,
                ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name.getValue(),
                      style: textTheme.labelSmall?.copyWith(
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        recipe.writeup.getValue(),
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 12,
                          color: AppColors.grey2,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          recipe.rating.toString(),
                          style: textTheme.bodyMedium?.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
