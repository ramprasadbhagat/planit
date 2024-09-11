import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';

part 'track_order.freezed.dart';

@freezed
class TrackOrder with _$TrackOrder {
  const TrackOrder._();
  factory TrackOrder({
    required List<TrackOrderDetails> trackOrderStatusList,
    required OrderStatus orderStatus,
    required StringValue id,
  }) = _TrackOrder;

  factory TrackOrder.empty() => TrackOrder(
        trackOrderStatusList: [],
        orderStatus: OrderStatus(''),
        id: StringValue(''),
      );

  String displayDate(OrderStatus status) {
    return trackOrderStatusList
        .lastWhere((e) => e.status == status,
            orElse: () => TrackOrderDetails.empty())
        .date
        .getDisplayValue;
  }
}
