part of 'track_order_bloc.dart';

@freezed
class TrackOrderState with _$TrackOrderState {
  const TrackOrderState._();
  const factory TrackOrderState({
    required TrackOrderDetails trackOrderItem,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required Order order,
  }) = _TrackOrderState;

  factory TrackOrderState.initial() => TrackOrderState(
        trackOrderItem: TrackOrderDetails.empty(),
        apiFailureOrSuccessOption: const None(),
        order: Order.empty(),
        isFetching: false,
      );
}
