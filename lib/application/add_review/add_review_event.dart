part of 'add_review_bloc.dart';

@freezed
class AddReviewEvent with _$AddReviewEvent {
  const factory AddReviewEvent.selectOrder({
    required Order order,
  }) = _SelectOrder;
  const factory AddReviewEvent.selectOrderItem({
    required OrderItem orderItem,
  }) = _SelectOrderItem;

  const factory AddReviewEvent.onRatingChange({
    required double rating,
  }) = _OnRatingChange;

  const factory AddReviewEvent.onMessageChange({
    required String message,
  }) = _OnMessageChange;

  const factory AddReviewEvent.submitProductReview() = _SubmitProductReview;
  const factory AddReviewEvent.submitOrderReview() = _SubmitOrderReview;
  const factory AddReviewEvent.clearOnCancel() = _ClearOnCancel;
}
