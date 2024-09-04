part of 'search_recipes_bloc.dart';

@freezed
class SearchRecipesState with _$SearchRecipesState {
  const SearchRecipesState._();

  const factory SearchRecipesState({
    required List<Recipe> recipes,
    required bool isFetching,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required int currentPage,
    required int totalItemCount,
    required String searchText,
  }) = _SearchRecipesState;

  factory SearchRecipesState.initial() => const SearchRecipesState(
        recipes: [],
        isFetching: false,
        apiFailureOrSuccessOption: None(),
        currentPage: 1,
        totalItemCount: 0,
        searchText: '',
      );
}
