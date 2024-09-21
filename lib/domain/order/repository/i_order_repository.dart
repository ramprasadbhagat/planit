import 'package:dartz/dartz.dart' hide Order;
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/domain/order/entities/delivery_time.dart';
import 'package:planit/domain/order/entities/order.dart';

abstract class IOrderRepository {
  Future<Either<ApiFailure, String>> submitOrder({
    required CartItem cartItem,
    required AddressBook address,
    required String date,
    required Coupon coupon,
    required double deliveryCharge,
    required String paymentType,
  });

  Future<Either<ApiFailure, List<Order>>> getAllOrders();
  Future<Either<ApiFailure, Unit>> updateOrderPayment({
    required String orderId,
    required bool success,
    required String transactionId,
    required String paymentType,
  });

  Future<Either<ApiFailure, DeliveryTime>> getDeliveryDate({
    bool isDeliveryDateSelectedByUser = false,
    String selectedDate = '',
  });
}
