import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/order/value/value_transformers.dart';

class DeliveryDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory DeliveryDate(String input) =>
      DeliveryDate._(parseNullDateTime(input));

  const DeliveryDate._(this.value);

  String get getDisplayValue => getDeliveryDateDisplay(value);
}

Either<ValueFailure<DateTime>, DateTime> parseNullDateTime(String input) {
  return DateTime.tryParse(input) == null
      ? left(ValueFailure.empty(failedValue: DateTime(2000)))
      : right(DateTime.parse(input));
}
