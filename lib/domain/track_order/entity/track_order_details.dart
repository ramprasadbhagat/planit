import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_order_details.freezed.dart';

@freezed
class TrackOrderDetails with _$TrackOrderDetails {
  const TrackOrderDetails._();
  factory TrackOrderDetails({
    required String id,
    required String orderId,
    required String orderStatus,
    required String date,
  }) = _TrackOrderDetails;

  factory TrackOrderDetails.empty() => TrackOrderDetails(
        id: '',
        orderId: '',
        orderStatus: '',
        date: '',
      );
}
