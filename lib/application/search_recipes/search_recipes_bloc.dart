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
        if (!e.forceRefresh && e.searchKey == state.searchText) {
          return;
        }
        if (e.searchKey.isEmpty) {
          emit(SearchRecipesState.initial());
          return;
        }
        emit(
          state.copyWith(
            isFetching: true,
            searchText: e.searchKey,
            recipes: [],
            currentPage: 1,
            totalItemCount: 0,
          ),
        );
        final failureOrSuccess = await repository.fetchRecipes(
          search: e.searchKey,
        );

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
              recipes: r.recipes,
              isFetching: false,
              totalItemCount: r.itemCounts,
            ),
          );
        });
      },
      fetchMore: (_FetchMore value) async {
        if (!state.isFetching && state.totalItemCount > state.recipes.length) {
          emit(
            state.copyWith(
              isFetching: true,
            ),
          );
          final failureOrSuccess = await repository.fetchRecipes(
            pageNumber: state.currentPage + 1,
            search: state.searchText,
          );

          failureOrSuccess.fold((l) {
            emit(
              state.copyWith(
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                isFetching: false,
              ),
            );
          }, (r) {
            emit(
              state.copyWith(
                isFetching: false,
                recipes: [...state.recipes, ...r.recipes],
                currentPage: state.currentPage + 1,
              ),
            );
          });
        }
      },
    );
  }
}
