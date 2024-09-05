import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
import 'package:planit/domain/product/entities/product_image.dart';
import 'package:planit/domain/product/entities/product_response.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';
import 'package:planit/domain/product/value/value_objects.dart';
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
      final products = await remoteDataSource.getSubCategoryProduct(
        subCategory.id.getValue(),
      );

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<ProductImage>>> getProductImage(
    ProductId productId,
  ) async {
    try {
      final products = await remoteDataSource.getProductImage(productId);

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, ProductDetail>> getProductDetail(
    ProductId productId,
  ) async {
    try {
      final products = await remoteDataSource.getProductDetail(productId);

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, ProductResponse>> getSearchProduct({
    required String searchKey,
    required int pageNumber,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final categories = await localDataSource.getSearchProduct();

        return Right(categories);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final products = await remoteDataSource.getSearchProduct(
        pageNumber: pageNumber,
        searchKey: searchKey,
      );

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
