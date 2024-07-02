import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/infrastructure/coupon/dtos/coupon_dto.dart';

class CouponLocalDataSource {
  const CouponLocalDataSource();

  Future<List<Coupon>> getCouponList() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/coupon.json'),
    );
    final data = res['items'];
    return List.from(data).map((e) => CouponDto.fromJson(e).toDomain).toList();
  }
}
