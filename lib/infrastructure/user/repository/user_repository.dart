import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/user/entities/user.dart';
import 'package:planit/domain/user/repository/i_user_repository.dart';
import 'package:planit/infrastructure/user/datasource/user_local.dart';
import 'package:planit/infrastructure/user/datasource/user_remote.dart';

class UserRepository extends IUserRepository {
  final Config config;
  final UserLocalDataSource localDataSource;
  final UserRemoteDateSource remoteDataSource;

  UserRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, CurrentUser>> fetchCurrentUser() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final currentUser = await localDataSource.fetchCurrentUser();

        return Right(currentUser);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final currentUser = await remoteDataSource.fetchCurrentUser();

      return Right(currentUser);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateCurrentUser({
    required CurrentUser user,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        await localDataSource.updateCurrentUser(user);

        return const Right(unit);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      await remoteDataSource.updateCurrentUser(user);

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
