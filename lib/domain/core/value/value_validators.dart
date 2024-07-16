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

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  return RegExp(emailRegex).hasMatch(input)
      ? right(input)
      : left(ValueFailure.invalidEmail(failedValue: input));
}
