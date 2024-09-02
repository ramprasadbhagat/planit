import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/domain/recipe/entities/recipe_details.dart';
import 'package:planit/domain/recipe/repository/i_recipe_repository.dart';

part 'recipe_details_event.dart';
part 'recipe_details_state.dart';
part 'recipe_details_bloc.freezed.dart';

class RecipeDetailsBloc extends Bloc<RecipeDetailsEvent, RecipeDetailsState> {
  final IRecipeRepository repository;
  RecipeDetailsBloc(this.repository) : super(RecipeDetailsState.initial()) {
    on<RecipeDetailsEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    RecipeDetailsEvent event,
    Emitter<RecipeDetailsState> emit,
  ) async {
    await event.map(
      fetch: (e) async {
        emit(
          RecipeDetailsState.initial().copyWith(
            isFetching: true,
            recipeDetails: state.recipeDetails.copyWith(recipe: e.recipe),
          ),
        );

        final failureOrSuccess =
            await repository.fetchRecipeById(e.recipe.id.getValue());

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
                recipeDetails: r,
              ),
            );
          },
        );
      },
      ratingChange: (_RatingChange value) {
        emit(
          state.copyWith(
            rating: value.rating,
          ),
        );
      },
      commentChange: (_CommentChange value) {
        emit(
          state.copyWith(
            commentMessage: value.message,
          ),
        );
      },
      addReviewClicked: (_AddReviewClicked value) async {
        emit(
          state.copyWith(
            addingReview: true,
          ),
        );

        final res = await repository.addRecipeReview(
          recipeId: state.recipeDetails.recipe.id.getValue(),
          recipeRating: state.rating.toString(),
          recipeReviewerName: value.reviewerName,
          recipeReviewCommments: state.commentMessage,
        );

        emit(
          state.copyWith(
            addingReview: false,
            apiFailureOrSuccessOption: optionOf(res),
          ),
        );
        add(_Fetch(state.recipeDetails.recipe));
      },
      toggleViewAllReview: (_ToggleViewAllReview value) {
        emit(
          state.copyWith(
            viewAllReviews: !state.viewAllReviews,
          ),
        );
      },
    );
  }
}
