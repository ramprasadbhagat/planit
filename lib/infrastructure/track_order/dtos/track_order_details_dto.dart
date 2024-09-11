import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/order/value/value_objects.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';

part 'track_order_details_dto.freezed.dart';
part 'track_order_details_dto.g.dart';

@freezed
class TrackOrderDetailsDto with _$TrackOrderDetailsDto {
  const TrackOrderDetailsDto._();
  factory TrackOrderDetailsDto({
    @JsonKey(name: 'status', defaultValue: '') required String status,
    @JsonKey(name: 'date', defaultValue: '') required String date,
  }) = _TrackOrderDetailsDto;

  factory TrackOrderDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$TrackOrderDetailsDtoFromJson(json);

  TrackOrderDetails get toDomain => TrackOrderDetails(
        date: DeliveryDate(date),
        status: OrderStatus(status),
      );
}
