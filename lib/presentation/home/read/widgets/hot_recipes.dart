import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/recipe/recipe_bloc.dart';
import 'package:planit/domain/home/entities/hot_recipe.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/home/read/widgets/recipe_filter_bottom_sheet.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
                    ).then((value) {
                      context
                          .read<RecipeBloc>()
                          .add(const RecipeEvent.resetTempSelection());
                    });
                  },
                  child: BlocBuilder<RecipeBloc, RecipeState>(
                    buildWhen: (previous, current) =>
                        previous.filterCount != current.filterCount,
                    builder: (context, state) {
                      return Badge(
                        isLabelVisible: state.filterCount != 0,
                        label: Text(
                          '${state.filterCount}',
                        ),
                        textStyle: const TextStyle(fontSize: 10),
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
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        BlocBuilder<RecipeBloc, RecipeState>(
          buildWhen: (previous, current) =>
              previous.filteredRecipes != current.filteredRecipes ||
              previous.isFetching != current.isFetching,
          builder: (context, state) {
            if (state.filteredRecipes.isEmpty && !state.isFetching) {
              return const SliverToBoxAdapter(
                child: NoData(
                  message: 'No Recipe Found!',
                ),
              );
            }

            return Skeletonizer(
              enabled: state.isFetching,
              child: SliverList.builder(
                itemCount: state.filteredRecipes.length,
                itemBuilder: (BuildContext context, int index) => HotRecipeCard(
                  recipe: state.filteredRecipes[index],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

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
