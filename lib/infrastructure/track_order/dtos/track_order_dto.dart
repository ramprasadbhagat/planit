import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/track_order/entity/track_order.dart';
import 'package:planit/infrastructure/track_order/dtos/track_order_details_dto.dart';

part 'track_order_dto.freezed.dart';
part 'track_order_dto.g.dart';

@freezed
class TrackOrderDto with _$TrackOrderDto {
  const TrackOrderDto._();
  factory TrackOrderDto({
    @JsonKey(name: 'order_id', defaultValue: '') required String orderId,
    @JsonKey(name: 'all_status', defaultValue: [])
    required List<TrackOrderDetailsDto> trackOrderStatusList,
    @JsonKey(name: 'order_status', defaultValue: '')
    required String orderStatus,
  }) = _TrackOrderDto;

  factory TrackOrderDto.fromJson(Map<String, dynamic> json) =>
      _$TrackOrderDtoFromJson(json);

  TrackOrder get toDomain => TrackOrder(
        orderStatus: OrderStatus(orderStatus),
        trackOrderStatusList:
            trackOrderStatusList.map((e) => e.toDomain).toList(),
        id: StringValue(orderId),
      );
}
