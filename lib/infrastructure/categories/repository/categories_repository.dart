import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/domain/category/repository/i_categories_repository.dart';
import 'package:planit/infrastructure/categories/datasource/categories_local.dart';
import 'package:planit/infrastructure/categories/datasource/categories_remote.dart';

class CategoriesRepository extends ICategoriesRepository {
  final Config config;
  final CategoriesLocalDataSource localDataSource;
  final CategoriesRemoteDataSource remoteDataSource;

  CategoriesRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<ApiFailure, List<Category>>> getCategories() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final categories = await localDataSource.getCategories();

        return Right(categories);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final categories = await remoteDataSource.getCategories();

      return Right(categories);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
