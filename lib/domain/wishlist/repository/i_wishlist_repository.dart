import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/wishlist/entities/wish_list.dart';

abstract class IWishlistRepository {
  Future<Either<ApiFailure, List<Wishlist>>> getWishlist();
  Future<Either<ApiFailure, Unit>> addToWishlist({
    required String productId,
  });
  Future<Either<ApiFailure, Unit>> addToCart({
    required String productId,
    required String quantity,
    required String price,
  });
  Future<Either<ApiFailure, Unit>> removeFromWishlist({
    required String productId,
  });
}
