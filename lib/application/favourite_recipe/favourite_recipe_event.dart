part of 'favourite_recipe_bloc.dart';

@freezed
class FavouriteRecipeEvent with _$FavouriteRecipeEvent {
  const factory FavouriteRecipeEvent.fetch() = _Fetch;
  const factory FavouriteRecipeEvent.addToFavourite({
    required Recipe recipe,
  }) = _AddToFavourite;

  const factory FavouriteRecipeEvent.removeFromFavourite({
    required Recipe recipe,
  }) = _RemoveFromFavourite;
  const factory FavouriteRecipeEvent.reset() = _Reset;
}
