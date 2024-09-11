import 'package:dartz/dartz.dart' hide Order;
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/track_order/entity/track_order.dart';

abstract class ITrackOrderRepository {
  Future<Either<ApiFailure, TrackOrder>> getTrackOrder({
    required String orderId,
  });

  Future<Either<ApiFailure, Unit>> cancelOrder({
    required String orderId,
  });
}
