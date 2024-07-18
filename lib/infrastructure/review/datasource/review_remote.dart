import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/utils/storage_service.dart';

class ReviewRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;
  ReviewRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<Unit> addProductReview({
    required String productId,
    required String message,
    required double rating,
    required String orderId,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'productReview',
      data: {
        'user_id': userId,
        'product_id': productId,
        'review_content': message,
        'rating': rating,
        'order_id': orderId,
      },
    );

    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> addOrderReview({
    required String message,
    required double rating,
    required String orderId,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'productReview',
      data: {
        'user_id': userId,
        'review_content': message,
        'rating': rating,
        'order_id': orderId,
      },
    );
    log('add product review ${res.data}');
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
