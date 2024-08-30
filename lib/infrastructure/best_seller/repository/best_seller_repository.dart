import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/best_seller/entities/best_seller_product.dart';
import 'package:planit/domain/best_seller/repository/best_seller_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/infrastructure/best_seller/datasource/best_seller_local.dart';
import 'package:planit/infrastructure/best_seller/datasource/best_seller_remote.dart';

class BestSellerRepository extends IBestSellerRepository {
  final Config config;
  final BestSellerLocalDatasource localDataSource;
  final BestSellerRemoteDatasource remoteDataSource;

  BestSellerRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<ApiFailure, List<BestSellerProduct>>>
      fetchBestSellerProducts() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final products = await localDataSource.fetchBestSellerProducts();

        return Right(products);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final products = await remoteDataSource.fetchBestSellerProducts();

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
