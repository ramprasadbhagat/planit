import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/infrastructure/product/datasource/product_local.dart';
import 'package:planit/infrastructure/product/datasource/product_remote.dart';

class ProductRepository extends IProductRepository {
  final Config config;
  final ProductLocalDataSource localDataSource;
  final ProductRemoteDataSource remoteDataSource;

  ProductRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<Product>>> getHighlightedProduct() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final categories = await localDataSource.getHighlightedProduct();

        return Right(categories);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final products = await remoteDataSource.getHighlightedProduct();

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Product>>> getQuickPackProduct() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final categories = await localDataSource.getHighlightedProduct();

        return Right(categories);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final products = await remoteDataSource.getHighlightedProduct();

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Product>>> getSubCategoryProduct(
    SubCategory subCategory,
  ) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final categories = await localDataSource.getSubCategoryProduct();

        return Right(categories);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final products =
          await remoteDataSource.getSubCategoryProduct(subCategory);

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
