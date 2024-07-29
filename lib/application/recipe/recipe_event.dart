part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.fetch() = _Fetch;
  const factory RecipeEvent.cuisineCheckboxChange(String cuisine) =
      _CuisineCheckboxChange;
  const factory RecipeEvent.courseCheckboxChange(String course) =
      _CourseCheckboxChange;
  const factory RecipeEvent.applyFilterClicked() = _ApplyFilterClicked;
  const factory RecipeEvent.clearAllFilterClicked() = _ClearAllFilterClicked;
  const factory RecipeEvent.resetTempSelection() = _ResetTempSelection;
}
