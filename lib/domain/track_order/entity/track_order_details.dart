import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/order/value/value_objects.dart';

part 'track_order_details.freezed.dart';

@freezed
class TrackOrderDetails with _$TrackOrderDetails {
  const TrackOrderDetails._();
  factory TrackOrderDetails({
    required OrderStatus status,
    required DeliveryDate date,
  }) = _TrackOrderDetails;

  factory TrackOrderDetails.empty() => TrackOrderDetails(
        status: OrderStatus(''),
        date: DeliveryDate(''),
      );
}
