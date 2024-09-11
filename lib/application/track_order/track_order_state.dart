part of 'track_order_bloc.dart';

@freezed
class TrackOrderState with _$TrackOrderState {
  const TrackOrderState._();
  const factory TrackOrderState({
    required TrackOrder trackOrder,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool isCancelling,
  }) = _TrackOrderState;

  factory TrackOrderState.initial() => TrackOrderState(
        trackOrder: TrackOrder.empty(),
        apiFailureOrSuccessOption: const None(),
        isFetching: false,
        isCancelling: false,
      );
}
