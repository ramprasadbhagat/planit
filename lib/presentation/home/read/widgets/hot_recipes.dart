import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/domain/home/entities/hot_recipe.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/home/read/widgets/recipe_filter_bottom_sheet.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Recipes',
                  style: textTheme.labelMedium,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const CommonBottomSheet(
                        child: RecipeFilterBottomSheet(),
                      ),
                      isScrollControlled: true,
                    );
                  },
                  child: Material(
                    color: AppColors.transparent,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: AppColors.grey4,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(SvgImage.filterIcon),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Filter by',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  fontSize: 12,
                                  color: AppColors.grey4,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
