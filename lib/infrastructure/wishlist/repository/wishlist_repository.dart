import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/wishlist/entities/wish_list.dart';
import 'package:planit/domain/wishlist/repository/i_wishlist_repository.dart';
import 'package:planit/infrastructure/wishlist/datasource/wishlist_local.dart';
import 'package:planit/infrastructure/wishlist/datasource/wishlist_remote.dart';

class WishlistRepository extends IWishlistRepository {
  final Config config;
  final WishlistLocalDataSource localDataSource;
  final WishlistRemoteDataSource remoteDataSource;

  WishlistRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<Wishlist>>> getWishlist() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final data = await localDataSource.getWishlist();

        return Right(data);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final cartItems = await remoteDataSource.getWishlist();

      return Right(cartItems);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addToWishlist({
    required String productId,
    required String attributeItemId,
    required String quantity,
    required String price,
  }) async {
    try {
      final wishlist = await remoteDataSource.addToWishlist(
        productId: productId,
        attributeItemId: attributeItemId,
        quantity: quantity,
        price: price,
      );

      return Right(wishlist);
    } catch (e) {
      if (e is OtherException) {
        return const Left(ApiFailure.other('Something Went Wrong'));
      }
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> removeFromWishlist({
    required String productId,
  }) async {
    try {
      final wishlist = await remoteDataSource.removeFromWishlist(
        productId: productId,
      );

      return Right(wishlist);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addToCart({
    required String productId,
    required String quantity,
    required String price,
    required String attributeItemId,
  }) async {
    try {
      final wishlist = await remoteDataSource.addToCart(
        productId: productId,
        price: price,
        quantity: quantity,
        attributeItemId: attributeItemId,
      );

      return Right(wishlist);
    } catch (e) {
      if (e is OtherException) {
        return const Left(ApiFailure.other('Something Went Wrong'));
      }
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateProductQuantity({
    required String productId,
    required String quantity,
  }) async {
    try {
      final wishlist = await remoteDataSource.updateProductQuantity(
        productId: productId,
        quantity: quantity,
      );

      return Right(wishlist);
    } catch (e) {
      if (e is OtherException) {
        return const Left(ApiFailure.other('Something Went Wrong'));
      }
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
