import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'delivery_time.freezed.dart';

@freezed
class DeliveryTime with _$DeliveryTime {
  const factory DeliveryTime({
    required DateTimeStringValue date,
    required DateTimeStringValue startTime,
    required DateTimeStringValue endTime,
  }) = _DeliveryTime;

  factory DeliveryTime.empty() => DeliveryTime(
        date: DateTimeStringValue(''),
        startTime: DateTimeStringValue(''),
        endTime: DateTimeStringValue(''),
      );
}
