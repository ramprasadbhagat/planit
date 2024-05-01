import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/core/value/value_validators.dart';

class ProductId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProductId(String input) => ProductId._(validateStringNotEmpty(input));

  const ProductId._(this.value);
}
