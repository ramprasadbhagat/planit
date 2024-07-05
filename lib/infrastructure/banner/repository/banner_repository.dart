import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/banner/repository/i_banner_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/banner/entities/banner.dart';
import 'package:planit/infrastructure/banner/datasource/banner_local.dart';
import 'package:planit/infrastructure/banner/datasource/banner_remote.dart';

class BannerRepository extends IBannerRepository {
  final Config config;
  final BannersLocalDataSource localDataSource;
  final BannersRemoteDataSource remoteDataSource;
  BannerRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<ApiFailure, List<Banner>>> getBanner() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final banner = await localDataSource.getBanner();

        return Right(banner);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final banner = await remoteDataSource.getBanner();

      return Right(banner);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Banner>>> getCategoryBanner() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final banner = await localDataSource.getBanner();

        return Right(banner);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final banner = await remoteDataSource.getSubCategoryBanner();

      return Right(banner);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Banner>>> getOccassionBanner() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final banner = await localDataSource.getBanner();

        return Right(banner);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final banner = await remoteDataSource.getOccassionBanner();

      return Right(banner);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
