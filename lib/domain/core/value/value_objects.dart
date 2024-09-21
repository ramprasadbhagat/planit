import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:planit/domain/core/error/errors.dart';
import 'package:planit/domain/core/error/failures.dart';
import 'package:planit/domain/core/value/constant.dart';
import 'package:planit/domain/core/value/value_transformer.dart';
import 'package:planit/domain/core/value/value_validators.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrDefaultValue(T defaultValue) {
    return value.fold((f) => defaultValue, id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class StringValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringValue(String input) =>
      StringValue._(validateStringNotEmpty(input));

  String get displayLabel => naIfEmpty(value.getOrElse(() => ''));

  const StringValue._(this.value);
}

class DateTimeStringValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DateTimeStringValue(String input) {
    return DateTimeStringValue._(validateDateString(input));
  }

  String get _valueOrEmpty => value.getOrElse(() => '');

  String get _valueOrDash => value.getOrElse(() => '-');

  String get _valueOrNa => value.getOrElse(() => 'NA');

  bool get isNotEmpty => _valueOrEmpty.isNotEmpty;

  bool get isEmpty => _valueOrEmpty.isEmpty;

  String get displayOnlyHours => convertHoursIn12HrsFormat(
        _valueOrNa,
        DateTimeFormatString.displayOnlyHours,
      );

  String get dateTimeOrNaString => displayDateTimeString(
        _valueOrNa,
        DateTimeFormatString.displayDateFormat,
      );

  String get dateOrDashString => displayDateTimeString(
        _valueOrDash,
        DateTimeFormatString.displayDateFormat,
      );

  String get dateTimeOrDashString => displayDateTimeString(
        _valueOrDash,
        DateTimeFormatString.displayDateTimeFormat,
      );

  String get dateString => displayDateTimeString(
        _valueOrEmpty,
        DateTimeFormatString.displayDateFormat,
      );

  String get simpleDateString => displayDateTimeString(
        _valueOrEmpty,
        DateTimeFormatString.displaySimpleDateFormat,
      );

  String get dateTime12HoursString => displayDateTimeString(
        _valueOrEmpty,
        DateTimeFormatString.displayDateTime12HoursFormat,
      );

  String get apiDateTimeString => displayDateTimeString(
        _valueOrEmpty,
        DateTimeFormatString.apiDateFormat,
      );

  String get apiDateWithDashString => displayDateTimeString(
        _valueOrEmpty,
        DateTimeFormatString.apiDateWithDashFormat,
      );

  String get apiTime => displayDateTimeString(
        _valueOrEmpty,
        DateTimeFormatString.timeFormat,
      );

  int get intValue => getDateTimeIntValue(_valueOrEmpty);

  DateTime? get dateTimeOrNull => tryParseDateTime(_valueOrEmpty);

  String get notificationDateTime => displayDateTimeString(
        _valueOrEmpty,
        DateTimeFormatString.displayNotificationDateTimeFormat,
      );

  // bool get aWeekDifference => differenceNGTWeek(dateTime);

  // bool get isDateMoreThanAWeekAway => checkIfDateMoreThanAWeekAway(dateTime);

  // DateTimeStringValue get threeDaysAfter => DateTimeStringValue(
  //       getThreeDaysAfterString(
  //         dateTime,
  //       ),
  //     );

  // int get paymentAttentionExpiry => paymentAttentionExpiryInDays(dateTime);

  bool get withinAYearFromNow => dateTimeOrNull != null
      ? dateTimeOrNull!.difference(DateTime.now()).inDays <= 365
      : false;

  const DateTimeStringValue._(this.value);
}

class PaymentStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PaymentStatus(String input) =>
      PaymentStatus._(validateStringNotEmpty(input));

  String get displayLabel => naIfEmpty(value.getOrElse(() => ''));

  bool get isSuccess => isEqualsIgnoreCase(displayLabel, 'completed');
  bool get isFailed => isEqualsIgnoreCase(displayLabel, 'pending');
  bool get isUnknown => !isSuccess && !isFailed;

  const PaymentStatus._(this.value);
}

class OrderStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory OrderStatus(String input) =>
      OrderStatus._(validateStringNotEmpty(input));

  String get displayLabel => naIfEmpty(value.getOrElse(() => ''));

  String get displayStatus => getOrderStatusText(value.getOrElse(() => ''));

  Color get tagColor => getOrderStatusTagColor(displayStatus);
  Color get tagLabelColor => getOrderStatusTagLabelColor(displayStatus);

  Icon get orderListStatusIcon => getOrderStatusOrderListIcon(displayStatus);

  bool get isOrderReceived =>
      isEqualsIgnoreCase(displayStatus, 'Order Received');
  bool get isInProcess => isEqualsIgnoreCase(displayStatus, 'Processing');

  bool get isDispached => isEqualsIgnoreCase(displayStatus, 'Dispatched');
  bool get isDelivered => isEqualsIgnoreCase(displayStatus, 'Delivered');
  bool get isCancelled => isEqualsIgnoreCase(displayStatus, 'Cancelled');

  int get getOrderStatusTrackPriority =>
      getOrderStatusTrackIndex(displayStatus);

  const OrderStatus._(this.value);
}

class IntegerValue extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory IntegerValue.fromString(String input) =>
      IntegerValue._(validateInteger(input));
  factory IntegerValue(int input) => IntegerValue._(Right(input));

  const IntegerValue._(this.value);
}

class MobileNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MobileNumber(String input) {
    return MobileNumber._(
      validateStringNotEmpty(input)
          .flatMap((input) => validateMinStringLength(input, 10)),
    );
  }

  const MobileNumber._(this.value);
}

class OTP extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory OTP(String input) {
    return OTP._(
      validateStringNotEmpty(input)
          .flatMap((input) => validateMinStringLength(input, 4)),
    );
  }

  const OTP._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateStringNotEmpty(input).flatMap(validateEmailAddress),
    );
  }

  const EmailAddress._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(
      validateStringNotEmpty(input),
    );
  }

  factory FullName.fromFirstAndLastName({
    required StringValue firstName,
    required StringValue lastName,
  }) =>
      FullName(
        firstName.getValue() + lastName.value.fold((l) => '', (r) => ' $r'),
      );

  const FullName._(this.value);

  String get firstName {
    return value.fold((failure) => '', (fullName) => fullName.split(' ').first);
  }

  String get lastName {
    return value.fold(
      (failure) => '',
      (fullName) => fullName.split(' ').sublist(1).join(' '),
    );
  }
}

class AttributeQuantity extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory AttributeQuantity.fromString(String input) =>
      AttributeQuantity._(validateInteger(input));
  factory AttributeQuantity(int input) => AttributeQuantity._(Right(input));

  bool get isGretharThanZero => getIsGretharThanZero(value.getOrElse(() => 0));

  const AttributeQuantity._(this.value);
}
