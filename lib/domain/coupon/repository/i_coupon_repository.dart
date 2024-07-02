import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';

abstract class ICouponRepository {
  Future<Either<ApiFailure, List<Coupon>>> getCouponList();
  Future<Either<ApiFailure, Unit>> applyCoupon({required Coupon coupon});
}
