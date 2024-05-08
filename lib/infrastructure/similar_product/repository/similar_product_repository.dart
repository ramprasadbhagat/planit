import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/similar_product/entities/similar_product.dart';
import 'package:planit/domain/similar_product/repository/i_similar_product_repository.dart';
import 'package:planit/infrastructure/similar_product/datasource/similar_product_local.dart';
import 'package:planit/infrastructure/similar_product/datasource/similar_product_remote.dart';

class SimilarProductRepository extends ISimilarProductRepository {
  final Config config;
  final SimilarProductLocalDataSource localDataSource;
  final SimilarProductRemoteDataSource remoteDataSource;

  SimilarProductRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<SimilarProduct>>> getSimilarProductList({
    required String productId,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.getSimilarProductList();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final products =
          await remoteDataSource.getSimilarProductsList(productId: productId);

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
