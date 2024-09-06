import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/pincode/entities/pincode.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/pincode/entities/pincode_check.dart';
import 'package:planit/domain/pincode/repository/i_pincode_repository.dart';
import 'package:planit/infrastructure/pincode/datasource/pincode_local.dart';
import 'package:planit/infrastructure/pincode/datasource/pincode_remote.dart';
import 'package:planit/utils/storage_service.dart';

class PincodeRepository extends IPincodeRepository {
  final Config config;
  final StorageService storageService;
  final PincodeLocalDataSource localDataSource;
  final PincodeRemoteDataSource remoteDataSource;

  PincodeRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
    required this.storageService,
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
      // if (res == PincodeCheck.empty()) {
      //   return Left(FailureHandler.handleFailure(e));
      // }
      return Right(res);
    } catch (e) {
      if (e is OtherException) {
        return const Left(ApiFailure.other('Pincode is not found'));
      }
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, PinCode>> savePincode({
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
      // if (res == Pincode.empty()) {
      //   return const Left(ApiFailure.other('Pincode is not saved'));
      // }
      return Right(res);
    } catch (e) {
      if (e is OtherException) {
        return const Left(ApiFailure.other('Pincode is not saved'));
      }
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addPinCodeToStorage({
    required PinCode pincode,
  }) async {
    try {
      await storageService.addPinCodeData(pincode);

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, PinCode>> getPinCodeFromStorage() async {
    try {
      final pinCodeData = storageService.getPinCodeData();

      return Right(pinCodeData);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> clearPinCodeOnStorage() async {
    try {
      await storageService.clearAllPinCodeData();

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
