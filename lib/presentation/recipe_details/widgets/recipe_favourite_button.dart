import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/favourite_recipe/favourite_recipe_bloc.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipeFavouriteButton extends StatelessWidget {
  const RecipeFavouriteButton({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavouriteRecipeBloc, FavouriteRecipeState>(
      listener: (context, state) {
        if (state.containsInFavourite(recipe)) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Recipe Added to Favourites list'),
              backgroundColor: AppColors.green,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Recipe removed from Favourites list'),
            ),
          );
        }
      },
      listenWhen: (previous, current) =>
          previous.containsInFavourite(recipe) !=
          current.containsInFavourite(recipe),
      builder: (context, state) {
        final isFavourite = state.containsInFavourite(recipe);

        return Skeletonizer(
          enabled: state.isFetching,
          child: Material(
            clipBehavior: Clip.hardEdge,
            color: AppColors.extraLightGrey5,
            elevation: 5,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: InkWell(
              onTap: state.isFetching
                  ? null
                  : () {
                      if (isFavourite) {
                        context.read<FavouriteRecipeBloc>().add(
                              FavouriteRecipeEvent.removeFromFavourite(
                                recipe: recipe,
                              ),
                            );
                      } else {
                        context.read<FavouriteRecipeBloc>().add(
                              FavouriteRecipeEvent.addToFavourite(
                                recipe: recipe,
                              ),
                            );
                      }
                    },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite,
                  color: isFavourite ? AppColors.deepRed : AppColors.iconGrey,
                  size: 22,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
