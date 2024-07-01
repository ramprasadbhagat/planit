import 'dart:convert';
import 'package:dartz/dartz.dart' hide Order;
import 'package:dio/dio.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/order/dtos/order_dto.dart';
import 'package:planit/utils/storage_service.dart';

class OrderRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  OrderRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<Unit> submitOrder({
    required CartItem cartItem,
    required AddressBook address,
    required Coupon coupon,
    required String date,
  }) async {
    final userId = storageService.getUserId();
    final data = json.encode({
      'cart_id': cartItem.id,
      'userId': userId,
      'deliveryAddressId': address.id,
      'couponId': coupon.id,
      'deliveryDate': date,
      'deliveryTime': '15:30',
      'taxes': '54',
      'packingCharges': '50.00',
      'productRating': '7.9',
      'paymentStatus': 'not done',
      'orderStatus': 'pending',
      'totalPrice': cartItem.totalPrice.getValue().toString(),
      'deliveryCharge': '40.00',
      'totalDiscount':
          (cartItem.totalDiscount.getValue() + coupon.amount).toString(),
      'products': cartItem.products.map((e) => e.toMap).toList(),
    });
    final res = await httpService.request(
      method: 'POST',
      url: 'orders',
      data: data,
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<List<Order>> getOrders() async {
    final userId = storageService.getUserId();

    final res = await httpService.request(
      method: 'GET',
      url: '/orders/orders-listing-by-user/$userId',
    );
    _exceptionChecker(res: res);
    final orders = res.data['items'];
    return List.from(orders).map((e) => OrderDto.fromJson(e).toDomain).toList();
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}
