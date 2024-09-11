part of 'track_order_bloc.dart';

@freezed
class TrackOrderEvent with _$TrackOrderEvent {
  const factory TrackOrderEvent.started() = _Started;
  const factory TrackOrderEvent.getTrackOrderDetails({
    required StringValue id,
  }) = _GetTrackOrderDetails;

  const factory TrackOrderEvent.cancelOrder() = _CancelOrder;
}
