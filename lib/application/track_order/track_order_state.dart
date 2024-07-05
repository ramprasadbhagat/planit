part of 'track_order_bloc.dart';

@freezed
class TrackOrderState with _$TrackOrderState {
  const TrackOrderState._();
  const factory TrackOrderState({
    required TrackOrderDetails trackOrderItem,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _TrackOrderState;
  const factory TrackOrderState.initial() = _Initial;
}
