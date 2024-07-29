import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/repository/i_recipe_repository.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final IRecipeRepository repository;
  RecipeBloc(this.repository) : super(RecipeState.initial()) {
    on<RecipeEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    RecipeEvent event,
    Emitter<RecipeState> emit,
  ) async {
    await event.map(
      fetch: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccess = await repository.fetchAllRecipes();

        failureOrSuccess.fold((l) {
          emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        }, (r) {
          emit(
            state.copyWith(
              recipes: r,
              filteredRecipes: r,
              isFetching: false,
            ),
          );
        });
      },
      cuisineCheckboxChange: (_CuisineCheckboxChange value) {
        if (state.tempSelectedCuisineFilter.contains(value.cuisine)) {
          emit(
            state.copyWith(
              tempSelectedCuisineFilter: state.tempSelectedCuisineFilter
                  .where((element) => element != value.cuisine)
                  .toList(),
            ),
          );
        } else {
          emit(
            state.copyWith(
              tempSelectedCuisineFilter: [
                ...state.tempSelectedCuisineFilter,
                value.cuisine,
              ],
            ),
          );
        }
      },
      courseCheckboxChange: (_CourseCheckboxChange value) {
        if (state.tempSelectedCourseFilter.contains(value.course)) {
          emit(
            state.copyWith(
              tempSelectedCourseFilter: state.tempSelectedCourseFilter
                  .where((element) => element != value.course)
                  .toList(),
            ),
          );
        } else {
          emit(
            state.copyWith(
              tempSelectedCourseFilter: [
                ...state.tempSelectedCourseFilter,
                value.course,
              ],
            ),
          );
        }
      },
      applyFilterClicked: (_ApplyFilterClicked value) {
        emit(
          state.copyWith(
            selectedCourseFilter: state.tempSelectedCourseFilter,
            selectedCuisineFilter: state.tempSelectedCuisineFilter,
            filteredRecipes: state.recipes.where(
              (element) {
                return (state.tempSelectedCourseFilter.isEmpty ||
                        state.tempSelectedCourseFilter.contains(
                          element.course.getValue(),
                        )) &&
                    (state.tempSelectedCuisineFilter.isEmpty ||
                        state.tempSelectedCuisineFilter.contains(
                          element.cuisine.getValue(),
                        ));
              },
            ).toList(),
          ),
        );
      },
      clearAllFilterClicked: (_ClearAllFilterClicked value) {
        emit(
          state.copyWith(
            tempSelectedCourseFilter: [],
            tempSelectedCuisineFilter: [],
          ),
        );
      },
      resetTempSelection: (_ResetTempSelection value) {
        emit(
          state.copyWith(
            tempSelectedCourseFilter: state.selectedCourseFilter,
            tempSelectedCuisineFilter: state.selectedCuisineFilter,
          ),
        );
      },
    );
  }
}
