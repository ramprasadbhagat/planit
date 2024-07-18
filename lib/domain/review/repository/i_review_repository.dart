import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';

abstract class IReviewRepository {
  Future<Either<ApiFailure, Unit>> addProductReview({
    required String orderId,
    required String productId,
    required double rating,
    required String message,
  });
  Future<Either<ApiFailure, Unit>> addOrderReview({
    required String orderId,
    required double rating,
    required String message,
  });
}
