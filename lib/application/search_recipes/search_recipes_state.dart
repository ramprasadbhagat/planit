part of 'search_recipes_bloc.dart';

@freezed
class SearchRecipesState with _$SearchRecipesState {
  const SearchRecipesState._();

  const factory SearchRecipesState({
    required List<Recipe> recipes,
    required bool isFetching,
    required String searchString,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _SearchRecipesState;

  factory SearchRecipesState.initial() => const SearchRecipesState(
        recipes: [],
        isFetching: false,
        apiFailureOrSuccessOption: None(),
        searchString: '',
      );
}
