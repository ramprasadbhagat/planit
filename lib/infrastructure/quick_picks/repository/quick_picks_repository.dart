import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/quick_picks/entities/quick_picks.dart';
import 'package:planit/domain/quick_picks/repository/i_quick_pick_repository.dart';
import 'package:planit/infrastructure/quick_picks/datasource/quick_picks_local.dart';
import 'package:planit/infrastructure/quick_picks/datasource/quick_picks_remote.dart';

class QuickPicksRepository extends IQuickPicksRepository {
  final Config config;
  final QuickPicksLocalDataSource localDataSource;
  final QuickPicksRemoteDataSource remoteDataSource;

  QuickPicksRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<QuickPicks>>> getQuickPicks() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.getQuickPicks();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final products = await remoteDataSource.getQuickPicks();

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
