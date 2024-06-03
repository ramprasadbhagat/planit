import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/pincode/entities/pincode.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/pincode/entities/pincode_check.dart';
import 'package:planit/domain/pincode/repository/i_pincode_repository.dart';
import 'package:planit/infrastructure/pincode/datasource/pincode_local.dart';
import 'package:planit/infrastructure/pincode/datasource/pincode_remote.dart';

class PincodeRepository extends IPincodeRepository {
  final Config config;
  final PincodeLocalDataSource localDataSource;
  final PincodeRemoteDataSource remoteDataSource;

  PincodeRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, PincodeCheck>> checkPincode({
    required String pincode,
  }) async {
    // if (config.appFlavor == Flavor.mock) {
    //   try {
    //     final pincode = await localDataSource.checkPincode(pincode: '');

    //     return Right(pincode);
    //   } catch (e) {
    //     return Left(FailureHandler.handleFailure(e));
    //   }
    // }
    try {
      final res = await remoteDataSource.checkPincode(pincode: pincode);
      if (res == PincodeCheck.empty()) {
        return const Left(ApiFailure.other('Pincode is not found'));
      }
      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Pincode>> savePincode({
    required String pincode,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final pincode = await localDataSource.savePincode(pincode: '');

        return Right(pincode);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final res = await remoteDataSource.savePincode(pincode: pincode);
      if (res == Pincode.empty()) {
        return const Left(ApiFailure.other('Pincode is not saved'));
      }
      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
