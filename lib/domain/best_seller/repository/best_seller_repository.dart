import 'package:dartz/dartz.dart';
import 'package:planit/domain/best_seller/entities/best_seller_product.dart';
import 'package:planit/domain/core/error/api_failures.dart';

abstract class IBestSellerRepository {
  Future<Either<ApiFailure, List<BestSellerProduct>>> fetchBestSellerProducts();
}
