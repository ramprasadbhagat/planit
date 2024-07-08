import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';

part 'track_order.freezed.dart';

@freezed
class TrackOrder with _$TrackOrder {
  const TrackOrder._();
  factory TrackOrder({
    required List<TrackOrderDetails> trackOrderItems,
    required int totalCount,
  }) = _TrackOrder;

  factory TrackOrder.empty() => TrackOrder(
        trackOrderItems: [],
        totalCount: 0,
      );
}
