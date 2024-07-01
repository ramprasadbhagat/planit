import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/coupon/dtos/coupon_dto.dart';
import 'package:planit/utils/storage_service.dart';

class CouponRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  CouponRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<List<Coupon>> getCouponList() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'coupon',
    );
    _exceptionChecker(res: res);
    final data = res.data['items'];
    return List.from(data).map((e) => CouponDto.fromJson(e).toDomain).toList();
  }

  Future<Unit> applyCoupon({
    required Coupon coupon,
  }) async {
    final res = await httpService.request(
      method: 'POST',
      url: 'coupon/${coupon.couponCode}',
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
