part of 'search_recipes_bloc.dart';

@freezed
class SearchRecipesEvent with _$SearchRecipesEvent {
  const factory SearchRecipesEvent.initialized() = _Initialized;
  const factory SearchRecipesEvent.fetchProduct({
    required String searchKey,
  }) = _FetchRecipes;
}
