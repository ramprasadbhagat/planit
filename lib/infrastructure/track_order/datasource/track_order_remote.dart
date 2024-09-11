import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/track_order/entity/track_order.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/track_order/dtos/track_order_dto.dart';
import 'package:planit/utils/storage_service.dart';

class TrackOrderRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  TrackOrderRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<TrackOrder> getTrackOrderDetails({
    required String orderId,
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'orderTracking/$orderId',
    );
    _trackOrderExceptionChecker(res: res);
    return TrackOrderDto.fromJson(res.data).toDomain;
  }

  Future<Unit> cancelOrder({
    required String orderId,
  }) async {
    final res = await httpService.request(
      method: 'PATCH',
      url: 'orders/cancelOrder/$orderId',
    );
    _cancelOrderExceptionChecker(res: res);

    return unit;
  }

  void _trackOrderExceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }

    if ((res.data == null ||
        res.data['all_status'] == null ||
        (res.data['all_status'] as List).isEmpty)) {
      throw const ApiFailure.other('Something wents wrong');
    }
  }
}

void _cancelOrderExceptionChecker({required Response<dynamic> res}) {
  if (res.statusCode != 200) {
    throw ServerException(
      code: res.statusCode ?? 0,
      message: res.statusMessage ?? '',
    );
  }
}
