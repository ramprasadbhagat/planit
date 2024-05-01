import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/cart/repository/i_cart_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/infrastructure/cart/datasource/cart_local.dart';
import 'package:planit/infrastructure/cart/datasource/cart_remote.dart';

class CartRepository extends ICartRepository {
  final Config config;
  final CartLocalDataSource localDataSource;
  final CartRemoteDataSource remoteDataSource;

  CartRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<CartItem>>> getCart() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final categories = await localDataSource.getCart();

        return Right(categories);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final cartItems = await remoteDataSource.getCart();

      return Right(cartItems);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addToCart({
    required Product product,
    required int quantity,
  }) async {
    try {
      final cartItems = await remoteDataSource.addToCart(
        productId: product.productId.getValue(),
        quantity: quantity,
        totalPrice: product.skuPrice.getValue() * quantity,
      );

      return Right(cartItems);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> removeFromCart({
    required CartItem cartItem,
  }) async {
    try {
      final cartItems = await remoteDataSource.removeFromCart(
        productId: cartItem.productId,
      );

      return Right(cartItems);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
