import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:planit/domain/core/error/errors.dart';
import 'package:planit/domain/core/error/failures.dart';
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

class PaymentStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PaymentStatus(String input) =>
      PaymentStatus._(validateStringNotEmpty(input));

  String get displayLabel => naIfEmpty(value.getOrElse(() => ''));

  bool get isSuccess => isEqualsIgnoreCase(displayLabel, 'successfull');
  bool get isFailed => isEqualsIgnoreCase(displayLabel, 'failed');
  bool get isUnknown => !isSuccess || !isFailed;

  const PaymentStatus._(this.value);
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
