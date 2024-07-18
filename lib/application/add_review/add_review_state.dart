part of 'add_review_bloc.dart';

@freezed
class AddReviewState with _$AddReviewState {
  const factory AddReviewState({
    required bool isFetching,
    required Order selectedOrder,
    required OrderItem selectedOrderItem,
    required double rating,
    required String message,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _Initial;

  factory AddReviewState.initial() => AddReviewState(
        isFetching: false,
        selectedOrder: Order.empty(),
        selectedOrderItem: OrderItem.empty(),
        rating: 0,
        message: '',
        apiFailureOrSuccessOption: none(),
      );
}
