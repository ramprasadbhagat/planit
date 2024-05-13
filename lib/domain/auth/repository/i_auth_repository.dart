import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailure, dynamic>> initiateLogin({
    required MobileNumber mobileNumber,
  });
  Future<Either<ApiFailure, dynamic>> verifyOTP({
    required MobileNumber mobileNumber,
    required OTP otp,
  });
  Future<Either<ApiFailure, Unit>> storeToken({
    required String token,
  });
  Future<Either<ApiFailure, Unit>> initTokenStorage();
  Future<Either<ApiFailure, Unit>> tokenValid();
  Future<Either<ApiFailure, Unit>> logout();
}
