import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/similar_product/entities/similar_product.dart';

abstract class ISimilarProductRepository {
  Future<Either<ApiFailure, List<SimilarProduct>>> getSimilarProductList({
    required String productId,
  });
}
