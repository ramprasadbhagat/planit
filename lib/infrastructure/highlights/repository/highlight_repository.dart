import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/highlights/entities/highlight.dart';
import 'package:planit/domain/highlights/repository/i_highlight_repository.dart';
import 'package:planit/infrastructure/highlights/datasource/highlight_local.dart';
import 'package:planit/infrastructure/highlights/datasource/highlight_remote.dart';

class HighlightRepository extends IHighlightRepository {
  final Config config;
  final HighlightLocalDataSource localDataSource;
  final HighlightRemoteDataSource remoteDataSource;

  HighlightRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<Highlight>>> getHighlights() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.getHighlights();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final highlights = await remoteDataSource.getHighlights();

      return Right(highlights);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
