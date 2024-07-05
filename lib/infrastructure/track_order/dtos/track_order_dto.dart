import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/track_order/entity/track_order.dart';
import 'package:planit/infrastructure/track_order/dtos/track_order_details_dto.dart';

part 'track_order_dto.freezed.dart';
// part 'tracK_order_dto.g.dart';

@freezed
class TrackOrderDto with _$TrackOrderDto {
  const TrackOrderDto._();
  factory TrackOrderDto({
    @JsonKey(name: 'items', defaultValue: [])
    required List<TrackOrderDetailsDto> trackOrderItems,
    @JsonKey(name: 'totalCount', defaultValue: 0) required int totalCount,
  }) = _TrackOrderDto;

  factory TrackOrderDto.fromJson(Map<String, dynamic> json) =>
      _$TrackOrderDtoFromJson(json);

  TrackOrder get toDomain => TrackOrder(
        totalCount: totalCount,
        trackOrderItems: trackOrderItems.map((e) => e.toDomain).toList(),
      );
}
