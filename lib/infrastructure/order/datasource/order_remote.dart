import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/core/http/http.dart';
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
    required String date,
  }) async {
    final userId = storageService.getUserId();
    final data = json.encode({
      'userId': userId,
      'deliveryAddressId': address.id,
      'couponId': '',
      'paymentStatus': 'not done',
      'orderStatus': 'pending',
      'totalPrice': cartItem.totalPrice.getValue().toString(),
      'deliveryCharge': '40.00',
      'deliveryDate': date,
      'totalDiscount': cartItem.totalDiscount.getValue().toString(),
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

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}
