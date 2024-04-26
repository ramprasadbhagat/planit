import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) =>
    input.isNotEmpty
        ? right(input)
        : left(ValueFailure.empty(failedValue: input));

Either<ValueFailure<int>, int> validateInteger(
  String input,
) {
  if (int.tryParse(input) != null) return Right(int.parse(input));
  return const Left(ValueFailure.invalidInteger(failedValue: 0));
}
