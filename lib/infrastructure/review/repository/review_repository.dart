import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/review/repository/i_review_repository.dart';
import 'package:planit/infrastructure/review/datasource/review_local.dart';
import 'package:planit/infrastructure/review/datasource/review_remote.dart';

class ReviewRepository implements IReviewRepository {
  final ReviewRemoteDataSource remoteDataSource;
  final ReviewLocalDataSource localDataSource;
  final Config config;

  ReviewRepository({
    required this.remoteDataSource,
    required this.config,
    required this.localDataSource,
  });

  @override
  Future<Either<ApiFailure, Unit>> addOrderReview({
    required String orderId,
    required double rating,
    required String message,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.addProductReview();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }

    try {
      await remoteDataSource.addOrderReview(
        message: message,
        rating: rating,
        orderId: orderId,
      );

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addProductReview({
    required String orderId,
    required String productId,
    required double rating,
    required String message,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final list = await localDataSource.addProductReview();

        return Right(list);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }

    try {
      await remoteDataSource.addProductReview(
        productId: productId,
        message: message,
        rating: rating,
        orderId: orderId,
      );

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
