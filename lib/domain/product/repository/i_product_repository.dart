import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';

abstract class IProductRepository {
  Future<Either<ApiFailure, List<Product>>> getHighlightedProduct();
  Future<Either<ApiFailure, List<Product>>> getQuickPackProduct();
}
