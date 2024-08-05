part of 'favourite_recipe_bloc.dart';

@freezed
class FavouriteRecipeState with _$FavouriteRecipeState {
  const FavouriteRecipeState._();
  const factory FavouriteRecipeState({
    required List<Recipe> favouriteRecipes,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _FavouriteRecipeState;

  factory FavouriteRecipeState.initial() => const FavouriteRecipeState(
        favouriteRecipes: [],
        apiFailureOrSuccessOption: None(),
        isFetching: false,
      );

  bool containsInFavourite(Recipe recipe) =>
      favouriteRecipes.any((element) => element.id == recipe.id);
}
