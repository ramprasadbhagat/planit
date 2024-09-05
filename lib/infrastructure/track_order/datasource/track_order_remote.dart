import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/order/dtos/order_dto.dart';
import 'package:planit/infrastructure/track_order/dtos/track_order_details_dto.dart';
import 'package:planit/utils/storage_service.dart';

class TrackOrderRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  TrackOrderRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<TrackOrderDetails> getTrackOrderDetails({
    required String orderId,
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'orderTracking/$orderId',
    );
    _exceptionChecker(res: res);
    return TrackOrderDetailsDto.fromJson(res.data).toDomain;
  }

  Future<Order> cancelOrder({
    required String orderId,
  }) async {
    await Future.delayed(
      Durations.extralong4,
    ); // TODO implement cancel order api

    return getOrderById(orderId: orderId);
  }

  Future<Order> getOrderById({
    required String orderId,
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'orders/$orderId',
    );
    _exceptionChecker(res: res);

    final order = res.data['items'] as List;
    log(order.first.toString());

    return OrderDto.fromJson(order.first).toDomain;
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
