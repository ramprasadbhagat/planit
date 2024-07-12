import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/domain/home/entities/hot_recipe.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class HotRecipes extends StatelessWidget {
  const HotRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Hot Recipes',
              style: textTheme.labelMedium,
            ),
          ),
        ),
        SliverList.builder(
          itemCount: hotRecipeList.length,
          itemBuilder: (BuildContext context, int index) => HotRecipeCard(
            hotRecipe: hotRecipeList.elementAt(index),
          ),
        ),
      ],
    );
  }
}

class HotRecipeCard extends StatelessWidget {
  final HotRecipe hotRecipe;
  const HotRecipeCard({
    super.key,
    required this.hotRecipe,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: InkWell(
        onTap: () {
          context.router.navigate(const RecipeDetailsRoute());
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                PngImage.placeholder,
                width: 120,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotRecipe.title,
                      style: textTheme.labelSmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        hotRecipe.subTitle,
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 9,
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
                          hotRecipe.rating.toString(),
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

final hotRecipeList = <HotRecipe>[
  HotRecipe(
    image: 'hot_recipe_1.png',
    title: 'California Grilled Veggie Sandwich',
    subTitle: 'For a smoky and sumptuous veggie-filled',
    rating: 4.3,
  ),
  HotRecipe(
    image: 'hot_recipe_2.png',
    title: 'California Grilled Veggie Sandwich',
    subTitle: 'For a smoky and sumptuous veggie-filled',
    rating: 4.3,
  ),
  HotRecipe(
    image: 'hot_recipe_3.png',
    title: 'California Grilled Veggie Sandwich',
    subTitle: 'For a smoky and sumptuous veggie-filled',
    rating: 4.3,
  ),
];
