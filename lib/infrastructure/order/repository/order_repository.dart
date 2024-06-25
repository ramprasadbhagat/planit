import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/order/repository/i_order_repository.dart';
import 'package:planit/infrastructure/order/datasource/order_remote.dart';

class OrderRepository extends IOrderRepository {
  final Config config;
  final OrderRemoteDataSource remoteDataSource;
  OrderRepository({required this.config, required this.remoteDataSource});
  @override
  Future<Either<ApiFailure, Unit>> submitOrder({
    required CartItem cartItem,
    required AddressBook address,
    required String date,
  }) async {
    try {
      final success = await remoteDataSource.submitOrder(
        cartItem: cartItem,
        address: address,
        date: date,
      );

      return Right(success);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
