import 'package:dartz/dartz.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/auth/entities/otp.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailure, Otp>> initiateLogin({
    required MobileNumber mobileNumber,
  });
  Future<Either<ApiFailure, Auth>> verifyOTP({
    required MobileNumber mobileNumber,
    required OTP otp,
  });
  Future<void> storeToken({
    required Auth auth,
  });
  Future<Either<ApiFailure, Auth>> tokenValid();
  Future<void> logout();
}
