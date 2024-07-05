import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';

part 'track_order_details_dto.freezed.dart';
// part 'tracK_order_details_dto.g.dart';

@freezed
class TrackOrderDetailsDto with _$TrackOrderDetailsDto {
  const TrackOrderDetailsDto._();
  factory TrackOrderDetailsDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'orderId', defaultValue: '') required String orderId,
    @JsonKey(name: 'orderStatus', defaultValue: '') required String orderStatus,
    @JsonKey(name: 'date', defaultValue: '') required String date,
  }) = _TrackOrderDetailsDto;

  factory TrackOrderDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$TrackOrderDetailsDtoFromJson(json);

  TrackOrderDetails get toDomain => TrackOrderDetails(
        id: id,
        orderId: orderId,
        orderStatus: orderStatus,
        date: date,
      );
}
