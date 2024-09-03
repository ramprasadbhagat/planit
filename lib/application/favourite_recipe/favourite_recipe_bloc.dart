import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/favourite_recipe/repository/i_favourite_recipe.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';

part 'favourite_recipe_event.dart';
part 'favourite_recipe_state.dart';
part 'favourite_recipe_bloc.freezed.dart';

class FavouriteRecipeBloc
    extends Bloc<FavouriteRecipeEvent, FavouriteRecipeState> {
  final IFavouriteRecipeRepository repository;
  FavouriteRecipeBloc(this.repository) : super(FavouriteRecipeState.initial()) {
    on<FavouriteRecipeEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    FavouriteRecipeEvent event,
    Emitter<FavouriteRecipeState> emit,
  ) async {
    await event.map(
      reset: (_) {
        emit(FavouriteRecipeState.initial());
      },
      fetch: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );

        final failureOrSuccess = await repository.fetchFavouriteRecipe();

        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isFetching: false,
                favouriteRecipes: r,
              ),
            );
          },
        );
      },
      addToFavourite: (e) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccess =
            await repository.addToFavourite(e.recipe.id.getOrCrash());

        emit(
          state.copyWith(
            isFetching: false,
            apiFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
        add(const _Fetch());
      },
      removeFromFavourite: (e) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccess =
            await repository.removeFromFavourite(e.recipe.id.getOrCrash());

        emit(
          state.copyWith(
            isFetching: false,
            apiFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
        add(const _Fetch());
      },
    );
  }
}
