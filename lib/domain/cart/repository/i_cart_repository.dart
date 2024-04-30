import 'package:dartz/dartz.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';

abstract class ICartRepository {
  Future<Either<ApiFailure, List<CartItem>>> getCart();
  Future<Either<ApiFailure, Unit>> addToCart({
    required Product product,
    required int quantity,
  });
}
