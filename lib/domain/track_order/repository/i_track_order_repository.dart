import 'package:dartz/dartz.dart' hide Order;
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';

abstract class ITrackOrderRepository {
  Future<Either<ApiFailure, TrackOrderDetails>> getTrackOrder({
    required String orderId,
  });

  Future<Either<ApiFailure, Order>> cancelOrder({
    required String orderId,
  });
}
