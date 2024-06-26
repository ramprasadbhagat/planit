import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:planit/domain/core/error/failures.dart';
import 'package:planit/domain/core/value/value_transformer.dart';

String getDeliveryDateDisplay(
  Either<ValueFailure<DateTime>, DateTime> value,
) {
  return value.fold((l) => naIfEmpty(''), (r) => formatDisplayDate(r));
}

String formatDisplayDate(DateTime date) {
  final day = DateFormat('d').format(date);
  final monthYear = DateFormat('MMMM, yyyy').format(date);

  // Determine the suffix for the day
  String suffix;
  if (day.endsWith('1') && !day.endsWith('11')) {
    suffix = 'st';
  } else if (day.endsWith('2') && !day.endsWith('12')) {
    suffix = 'nd';
  } else if (day.endsWith('3') && !day.endsWith('13')) {
    suffix = 'rd';
  } else {
    suffix = 'th';
  }

  // Combine the day with suffix and the rest of the date
  return '$day$suffix $monthYear';
}
