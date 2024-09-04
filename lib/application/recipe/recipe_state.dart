part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  const RecipeState._();

  const factory RecipeState({
    required List<Recipe> recipes,
    required List<Recipe> filteredRecipes,
    required List<String> selectedCuisineFilter,
    required List<String> selectedCourseFilter,
    required List<String> tempSelectedCuisineFilter,
    required List<String> tempSelectedCourseFilter,
    required bool isFetching,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required int pageNumber,
    required bool hasMore,
  }) = _RecipeState;

  factory RecipeState.initial() => const RecipeState(
        recipes: [],
        isFetching: false,
        apiFailureOrSuccessOption: None(),
        filteredRecipes: [],
        selectedCourseFilter: [],
        selectedCuisineFilter: [],
        tempSelectedCourseFilter: [],
        tempSelectedCuisineFilter: [],
        hasMore: false,
        pageNumber: 1,
      );

  List<String> get courses =>
      recipes.map((e) => e.course.getValue()).toSet().toList();
  List<String> get cuisines =>
      recipes.map((e) => e.cuisine.getValue()).toSet().toList();

  int get filterCount =>
      selectedCourseFilter.length + selectedCuisineFilter.length;
  int get tempFilterCount =>
      tempSelectedCourseFilter.length + tempSelectedCuisineFilter.length;
}
