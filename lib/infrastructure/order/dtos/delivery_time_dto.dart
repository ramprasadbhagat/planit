import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/order/entities/delivery_time.dart';
part 'delivery_time_dto.freezed.dart';
part 'delivery_time_dto.g.dart';

@freezed
class DeliveryTimeDto with _$DeliveryTimeDto {
  const DeliveryTimeDto._();

  const factory DeliveryTimeDto({
    @JsonKey(name: 'date', defaultValue: '') required String date,
    @JsonKey(name: 'startTime', defaultValue: '') required String startTime,
    @JsonKey(name: 'endTime', defaultValue: '') required String endTime,
  }) = _DeliveryTimeDto;

  factory DeliveryTimeDto.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTimeDtoFromJson(json);

  DeliveryTime get toDomain => DeliveryTime(
        date: DateTimeStringValue(date),
        startTime: DateTimeStringValue('$date $startTime'),
        endTime: DateTimeStringValue('$date $endTime'),
      );
}
