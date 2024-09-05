import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/favourite_recipe/favourite_recipe_bloc.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TrendingRecipes extends StatelessWidget {
  const TrendingRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Favourite Recipes',
          onTap: () {
            context.router.navigate(const FavouriteRecipesRoute());
          },
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.32,
          child: BlocBuilder<FavouriteRecipeBloc, FavouriteRecipeState>(
            builder: (context, state) {
              if (!state.isFetching && state.favouriteRecipes.isEmpty) {
                return const NoData(
                  message: 'No Recipe Added to Favourites',
                );
              }
              return Skeletonizer(
                enabled: state.isFetching,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.favouriteRecipes.length,
                  itemBuilder: (BuildContext context, int index) =>
                      TrendingRecipeCard(
                    recipe: state.favouriteRecipes[index],
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 20,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class TrendingRecipeCard extends StatelessWidget {
  final Recipe recipe;
  const TrendingRecipeCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        context.router.navigate(RecipeDetailsRoute(recipe: recipe));
      },
      child: Stack(
        children: [
          if (recipe.recipeImages.isNotEmpty &&
              recipe.recipeImages.first.isValid())
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: recipe.recipeImages.first.getValue(),
                height: 196,
                width: 280,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) {
                  return Image.asset(
                    PngImage.placeholder,
                    height: 196,
                    width: 280,
                  );
                },
              ),
            )
          else
            Image.asset(
              PngImage.placeholder,
              height: 196,
              width: 280,
            ),
          Positioned(
            bottom: 0,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: 260,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name.getValue(),
                      style: textTheme.labelSmall?.copyWith(
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      recipe.writeup.getValue(),
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 12,
                        color: AppColors.grey1,
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 0.8,
                      endIndent: 0,
                      indent: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 15,
                              color: AppColors.slateBlue,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '${recipe.timeRequired.displayLabel} min',
                              style: textTheme.bodyMedium?.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              SvgImage.chefHat,
                              height: 15,
                              width: 15,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              recipe.difficultyLevel.getValue(),
                              style: textTheme.bodyMedium?.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
