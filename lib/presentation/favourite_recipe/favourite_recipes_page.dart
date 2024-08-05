import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/favourite_recipe/favourite_recipe_bloc.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/core/rating_star.dart';
import 'package:planit/presentation/recipe_details/widgets/recipe_favourite_button.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class FavouriteRecipesPage extends StatelessWidget {
  const FavouriteRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.noScaling,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favourite Recipes'),
          centerTitle: false,
          leadingWidth: 35,
        ),
        body: BlocBuilder<FavouriteRecipeBloc, FavouriteRecipeState>(
          builder: (context, state) {
            if (!state.isFetching && state.favouriteRecipes.isEmpty) {
              return const RecipeEmpty();
            }

            return Skeletonizer(
              enabled: state.isFetching,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: state.favouriteRecipes.length,
                itemBuilder: (context, index) => FavouriteRecipeCard(
                  recipe: state.favouriteRecipes[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class FavouriteRecipeCard extends StatelessWidget {
  final Recipe recipe;
  const FavouriteRecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(11)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: InkWell(
        onTap: () {
          context.router.navigate(RecipeDetailsRoute(recipe: recipe));
        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    child: recipe.recipeImages.isNotEmpty &&
                            recipe.recipeImages.first.isValid()
                        ? CachedNetworkImage(
                            imageUrl: recipe.recipeImages.first.getValue(),
                            height: 92,
                            width: 80,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            PngImage.placeholder,
                            height: 92,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
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
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            recipe.writeup.getValue(),
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.grey2,
                                    ),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              SvgImage.spoonIcon,
                              colorFilter: const ColorFilter.mode(
                                AppColors.black,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                text: ' Cuisine :',
                                children: [
                                  TextSpan(
                                    text: recipe.cuisine.getValue(),
                                    style: const TextStyle(
                                      color: AppColors.grey2,
                                    ),
                                  ),
                                ],
                              ),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        RatingStar(
                          value: recipe.rating,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 16,
              child: RecipeFavouriteButton(recipe: recipe),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeEmpty extends StatelessWidget {
  const RecipeEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(SvgImage.recipeEmptyIcon),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Your Favourite Recipes List is empty !',
            style: textTheme.titleLarge?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text.rich(
            TextSpan(
              children: const [
                TextSpan(
                  text: 'Tap ',
                ),
                WidgetSpan(
                  child: Icon(
                    Icons.favorite_rounded,
                    size: 20,
                    color: AppColors.deepRed,
                  ),
                ),
                TextSpan(
                  text: ' button to start saving your\nfavourite recipes.',
                ),
              ],
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              context.router.navigate(const ReadRoute());
            },
            child: const Text('Explore'),
          ),
        ],
      ),
    );
  }
}
