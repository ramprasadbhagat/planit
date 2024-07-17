import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/domain/cart/repository/i_cart_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/infrastructure/cart/datasource/cart_local.dart';
import 'package:planit/infrastructure/cart/datasource/cart_remote.dart';
import 'package:planit/utils/storage_service.dart';

class CartRepository extends ICartRepository {
  final Config config;
  final CartLocalDataSource localDataSource;
  final CartRemoteDataSource remoteDataSource;
  final StorageService storageService;

  CartRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
    required this.storageService,
  });

  @override
  Future<Either<ApiFailure, CartItem>> getCart() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final data = await localDataSource.getCart();

        return Right(data);
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
        totalPrice: int.tryParse(product.getPriceValue) ?? 0,
        attributeItemProductId: product.attributeItemProductId,
        attributeItemId: product.attributeItemId.getValue(),
      );

      return Right(cartItems);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateCartQuantity({
    required Product product,
    required int quantity,
    required String cartId,
  }) async {
    try {
      final cartItems = await remoteDataSource.updateCartItem(
        productId: product.productId.getValue(),
        quantity: quantity,
        cartId: cartId,
      );

      return Right(cartItems);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> removeFromCart({
    required CartProduct cartProduct,
  }) async {
    try {
      final cartItems = await remoteDataSource.removeFromCart(
        cartProduct: cartProduct,
      );

      return Right(cartItems);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addToCartLocal({
    required Product product,
    required int quantity,
  }) async {
    try {
      await storageService
          .addCartData(product.getCartProductLocal(quantity: quantity));

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<CartProductLocal>>> getCartLocal() async {
    try {
      final cartData = await storageService.getCartData();

      return Right(cartData);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> clearAllCartLocal() async {
    try {
      await storageService.clearAllCartData();

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> deleteCartLocal({required int index}) async {
    try {
      await storageService.deleteCartData(index);

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, double>> fetchDeliveryCharge({
    required String cartId,
    required String pincode,
  }) async {
    try {
      final deliveryCharge = await remoteDataSource.getDeliveryCharge(
        cartId: cartId,
        pincode: pincode,
      );

      return Right(deliveryCharge);
    } catch (e) {
      log(e.toString());
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
