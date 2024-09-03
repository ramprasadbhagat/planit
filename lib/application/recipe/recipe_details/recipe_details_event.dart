part of 'recipe_details_bloc.dart';

@freezed
class RecipeDetailsEvent with _$RecipeDetailsEvent {
  const factory RecipeDetailsEvent.fetch(Recipe recipe) = _Fetch;
  const factory RecipeDetailsEvent.ratingChange(double rating) = _RatingChange;
  const factory RecipeDetailsEvent.commentChange(String message) =
      _CommentChange;
  const factory RecipeDetailsEvent.addReviewClicked({
    required String reviewerName,
  }) = _AddReviewClicked;

  const factory RecipeDetailsEvent.toggleViewAllReview() = _ToggleViewAllReview;
}
