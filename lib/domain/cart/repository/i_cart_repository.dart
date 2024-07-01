import 'package:dartz/dartz.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';

abstract class ICartRepository {
  Future<Either<ApiFailure, CartItem>> getCart();
  Future<Either<ApiFailure, Unit>> addToCart({
    required Product product,
    required int quantity,
  });
  Future<Either<ApiFailure, Unit>> removeFromCart({
    required CartProduct cartProduct,
  });
  Future<Either<ApiFailure, List<CartProductLocal>>> getCartLocal();
  Future<Either<ApiFailure, Unit>> addToCartLocal({
    required Product product,
    required int quantity,
  });
  Future<Either<ApiFailure, Unit>> deleteCartLocal({
    required int index,
  });
  Future<Either<ApiFailure, Unit>> clearAllCartLocal();

  Future<Either<ApiFailure, Unit>> updateCartQuantity({
    required Product product,
    required int quantity,
    required String cartId,
  });
}
