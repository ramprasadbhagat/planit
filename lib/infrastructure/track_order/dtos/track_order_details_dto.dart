import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';

part 'track_order_details_dto.freezed.dart';
part 'track_order_details_dto.g.dart';

@freezed
class TrackOrderDetailsDto with _$TrackOrderDetailsDto {
  const TrackOrderDetailsDto._();
  factory TrackOrderDetailsDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'order_id', defaultValue: '') required String orderId,
    @JsonKey(name: 'order_status', defaultValue: '')
    required String orderStatus,
    @JsonKey(name: 'date', defaultValue: '') required String date,
  }) = _TrackOrderDetailsDto;

  factory TrackOrderDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$TrackOrderDetailsDtoFromJson(json);

  TrackOrderDetails get toDomain => TrackOrderDetails(
        id: id,
        orderId: orderId,
        orderStatus: getOrderStatus(orderStatus),
        date: date,
      );
}

OrderStatus getOrderStatus(String status) {
  switch (status) {
    case 'Order_Received':
      return OrderStatus.received;

    case 'In_Process':
      return OrderStatus.inProcess;

    case 'Dispatched':
      return OrderStatus.dispatched;

    case 'Delivered':
      return OrderStatus.successfull;

    case 'Cancelled':
      return OrderStatus.cancel;

    case 'cash payment done':
      return OrderStatus.received;

    case 'ok':
      return OrderStatus.received;

    case 'done':
      return OrderStatus.received;

    case 'pending':
      return OrderStatus.pending;

    default:
      return OrderStatus.pending;
  }
}
