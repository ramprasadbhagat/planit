import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/pincode/entities/pincode_check.dart';

abstract class IPincodeCheckRepository {
  Future<Either<ApiFailure, PincodeCheck>> checkPincode({
    required String pincode,
  });
}
