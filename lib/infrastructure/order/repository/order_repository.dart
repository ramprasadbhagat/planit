import 'package:dartz/dartz.dart' hide Order;
import 'package:planit/config.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/domain/order/entities/delivery_time.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/order/repository/i_order_repository.dart';
import 'package:planit/infrastructure/order/datasource/order_local.dart';
import 'package:planit/infrastructure/order/datasource/order_remote.dart';

class OrderRepository extends IOrderRepository {
  final Config config;
  final OrderRemoteDataSource remoteDataSource;
  final OrderLocalDataSource localDataSource;
  OrderRepository({
    required this.config,
    required this.remoteDataSource,
    required this.localDataSource,
  });
  @override
  Future<Either<ApiFailure, String>> submitOrder({
    required CartItem cartItem,
    required AddressBook address,
    required String date,
    required Coupon coupon,
    required double deliveryCharge,
    required String paymentType,
  }) async {
    try {
      final success = await remoteDataSource.submitOrder(
        cartItem: cartItem,
        address: address,
        date: date,
        coupon: coupon,
        deliveryCharge: deliveryCharge,
        paymentType: paymentType,
      );

      return Right(success);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateOrderPayment({
    required String orderId,
    required bool success,
    required String transactionId,
    required String paymentType,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        await localDataSource.getOrders();

        return const Right(unit);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final res = await remoteDataSource.updateOrderPayment(
        orderId: orderId,
        success: success,
        paymentType: paymentType,
        transactionId: transactionId,
      );

      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Order>>> getAllOrders() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final orders = await localDataSource.getOrders();

        return Right(orders);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final products = await remoteDataSource.getOrders();

      return Right(products);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, DeliveryTime>> getDeliveryDate({
    bool isDeliveryDateSelectedByUser = false,
    String selectedDate = '',
  }) async {
    try {
      final res = await remoteDataSource.getDeliveryDate(
        isDeliveryDateSelectedByUser: isDeliveryDateSelectedByUser,
        selectedDate: selectedDate,
      );

      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
