import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/auth/entities/otp.dart';
import 'package:planit/domain/auth/repository/i_auth_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/infrastructure/auth/datasources/auth_local.dart';
import 'package:planit/infrastructure/auth/datasources/auth_remote.dart';

class AuthRepository extends IAuthRepository {
  final Config config;
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;

  AuthRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, Otp>> initiateLogin({
    required MobileNumber mobileNumber,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final otp =
            await localDataSource.initiateLogin(mobileNumber: mobileNumber);

        return Right(otp);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final res =
          await remoteDataSource.initiateLogin(mobileNumber: mobileNumber);

      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Auth>> verifyOTP({
    required MobileNumber mobileNumber,
    required OTP otp,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final auth = await localDataSource.verifyOTP(
          mobileNumber: mobileNumber,
          otp: otp,
        );

        return Right(auth);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final res = await remoteDataSource.verifyOTP(
        mobileNumber: mobileNumber,
        otp: otp,
      );

      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<void> storeToken({required Auth auth}) async {
    await remoteDataSource.storeToken(auth: auth);
  }

  @override
  Future<Either<ApiFailure, Auth>> tokenValid() async {
    final auth = await remoteDataSource.tokenValid();
    if (auth == Auth.empty()) {
      return const Left(
        ApiFailure.other('unauthenticated, token is invalid'),
      );
    } else {
      return Right(auth);
    }
  }

  @override
  Future<void> logout() async {
    await remoteDataSource.logout();
  }
}
