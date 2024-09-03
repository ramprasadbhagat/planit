import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/repository/i_recipe_repository.dart';

part 'search_recipes_event.dart';
part 'search_recipes_state.dart';
part 'search_recipes_bloc.freezed.dart';

class SearchRecipesBloc extends Bloc<SearchRecipesEvent, SearchRecipesState> {
  final IRecipeRepository repository;
  SearchRecipesBloc({required this.repository})
      : super(SearchRecipesState.initial()) {
    on<SearchRecipesEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    SearchRecipesEvent event,
    Emitter<SearchRecipesState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(SearchRecipesState.initial()),
      fetchProduct: (e) async {
        if (e.searchKey == state.searchString) {
          return;
        }
        if (e.searchKey.isEmpty) {
          emit(SearchRecipesState.initial());
          return;
        }
        emit(
          state.copyWith(
            isFetching: true,
            searchString: e.searchKey,
          ),
        );
        final failureOrSuccess =
            await repository.searchRecipes(searchKey: e.searchKey);

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
              isFetching: false,
            ),
          );
        });
      },
    );
  }
}
