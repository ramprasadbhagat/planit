import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart' hide Order;
import 'package:dio/dio.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/domain/order/entities/delivery_time.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/order/dtos/delivery_time_dto.dart';
import 'package:planit/infrastructure/order/dtos/order_dto.dart';
import 'package:planit/utils/storage_service.dart';

class OrderRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  OrderRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<String> submitOrder({
    required CartItem cartItem,
    required AddressBook address,
    required Coupon coupon,
    required String date,
    required double deliveryCharge,
    required String paymentType,
  }) async {
    final userId = storageService.getUserId();
    final data = json.encode({
      'cart_id': cartItem.id.getValue(),
      'userId': userId,
      'deliveryAddressId': address.id,
      'couponId': coupon.id,
      'deliveryDate': date,
      'deliveryTime': '7:20 am - 7:30 pm',
      'paymentType': paymentType,
      'deliveryCharge': deliveryCharge.toString(),
    });
    final res = await httpService.request(
      method: 'POST',
      url: 'orders',
      data: data,
    );
    _exceptionChecker(res: res);
    return res.data['order_id'];
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

  Future<Unit> updateOrderPayment({
    required String orderId,
    required bool success,
    required String transactionId,
    required String paymentType,
  }) async {
    final res = await httpService.request(
      method: 'PATCH',
      url: '/orders/updateOrder',
      data: {
        'order_id': orderId,
        'paymentStatus': success ? 'completed' : 'pending',
        'paymentType': paymentType,
        'transaction_id': transactionId,
      },
    );
    _exceptionChecker(res: res);

    return unit;
  }

  Future<DeliveryTime> getDeliveryDate() async {
    final currentTime = DateTime.now();
    final data = {
      'date': '${currentTime.year}-${currentTime.month}-${currentTime.day}',
      'time': '${currentTime.hour}:${currentTime.minute}:${currentTime.second}',
    };
    final res = await httpService.request(
      method: 'POST',
      url: 'deliveryDateAndTime/recent',
      data: data,
    );
    _exceptionChecker(res: res);
    return DeliveryTimeDto.fromJson(res.data).toDomain;
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
