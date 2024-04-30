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

class IntegerValue extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory IntegerValue.fromString(String input) =>
      IntegerValue._(validateInteger(input));
  factory IntegerValue(int input) => IntegerValue._(Right(input));

  const IntegerValue._(this.value);
}
