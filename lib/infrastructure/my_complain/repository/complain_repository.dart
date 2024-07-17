import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/my_complain/entities/complain.dart';
import 'package:planit/domain/my_complain/repository/i_complain_repository.dart';
import 'package:planit/infrastructure/my_complain/datasource/complain_local.dart';
import 'package:planit/infrastructure/my_complain/datasource/complain_remote.dart';

class ComplainRepository extends IComplainRepository {
  final Config config;
  final ComplainLocalDataSource localDataSource;
  final ComplainRemoteDataSource remoteDataSource;
  ComplainRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<ApiFailure, Unit>> addComplain({
    required String name,
    required String email,
    required String orderId,
    required String complainContent,
    required File? file,
  }) async {
    try {
      final unit = await remoteDataSource.addComplain(
        name: name,
        email: email,
        orderId: orderId,
        complainContent: complainContent,
        imagePath: file?.path,
      );
      return Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Complain>>> getComplainsList() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final data = await localDataSource.getComplainList();

        return Right(data);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final list = await remoteDataSource.getComplainList();

      return Right(list);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
