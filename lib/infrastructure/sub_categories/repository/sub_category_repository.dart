import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/domain/sub_category/repository/i_sub_category_repository.dart';
import 'package:planit/infrastructure/sub_categories/datasource/sub_category_local.dart';
import 'package:planit/infrastructure/sub_categories/datasource/sub_cetegory_remote.dart';

class SubCategoryRepository extends ISubCategoryRepository {
  final Config config;
  final SubCategoryLocalDataSource localDataSource;
  final SubCategoryRemoteDataSource remoteDataSource;

  SubCategoryRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<SubCategory>>> getShopByCategory() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final sub = await localDataSource.getSubCategoryList();

        return Right(sub);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final sub = await remoteDataSource.getShopByCategoryList();

      return Right(sub);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<SubCategory>>> getShopByOcassion() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final sub = await localDataSource.getSubCategoryList();

        return Right(sub);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final sub = await remoteDataSource.getShopByOcassionList();

      return Right(sub);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
