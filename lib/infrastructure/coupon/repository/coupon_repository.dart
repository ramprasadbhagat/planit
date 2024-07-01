import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/domain/coupon/repository/i_coupon_repository.dart';
import 'package:planit/infrastructure/coupon/datasource/coupon_local.dart';
import 'package:planit/infrastructure/coupon/datasource/coupon_remote.dart';

class CouponRepository extends ICouponRepository {
  final Config config;
  final CouponLocalDataSource localDataSource;
  final CouponRemoteDataSource remoteDataSource;

  CouponRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, Unit>> applyCoupon({required Coupon coupon}) async {
    try {
      final unit = await remoteDataSource.applyCoupon(
        coupon: coupon,
      );

      return Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<Coupon>>> getCouponList() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final data = await localDataSource.getCouponList();

        return Right(data);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final list = await remoteDataSource.getCouponList();

      return Right(list);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
