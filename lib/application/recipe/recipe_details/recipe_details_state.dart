part of 'recipe_details_bloc.dart';

@freezed
class RecipeDetailsState with _$RecipeDetailsState {
  const factory RecipeDetailsState({
    required RecipeDetails recipeDetails,
    required bool isFetching,
    required String commentMessage,
    required double rating,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool addingReview,
    required bool viewAllReviews,
  }) = _RecipeDetailsState;

  factory RecipeDetailsState.initial() => RecipeDetailsState(
        recipeDetails: RecipeDetails.empty(),
        isFetching: false,
        apiFailureOrSuccessOption: const None(),
        commentMessage: '',
        rating: 0,
        addingReview: false,
        viewAllReviews: false,
      );
}
