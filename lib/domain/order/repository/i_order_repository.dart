import 'package:dartz/dartz.dart' hide Order;
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/order/entities/order.dart';

abstract class IOrderRepository {
  Future<Either<ApiFailure, Unit>> submitOrder({
    required CartItem cartItem,
    required AddressBook address,
    required String date,
  });

  Future<Either<ApiFailure, List<Order>>> getAllOrders();
}
