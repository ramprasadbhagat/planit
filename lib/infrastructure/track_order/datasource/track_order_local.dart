import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/track_order/entity/track_order.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';
import 'package:planit/infrastructure/order/dtos/order_dto.dart';
import 'package:planit/infrastructure/track_order/dtos/track_order_details_dto.dart';
import 'package:planit/infrastructure/track_order/dtos/track_order_dto.dart';

class TrackOrderLocalDataSource {
  const TrackOrderLocalDataSource();

  Future<TrackOrder> getTrackOrder() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/track_order.json'),
    );

    return TrackOrderDto.fromJson(res.data).toDomain;
  }

  Future<TrackOrderDetails> getTrackOrderDetails() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/track_order_details.json'),
    );

    return TrackOrderDetailsDto.fromJson(res.data).toDomain;
  }

  Future<Order> cancelOrder() async {
    return getOrder();
  }

  Future<Order> getOrder() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/orders.json'),
    );

    return OrderDto.fromJson((res['items'] as List).first).toDomain;
  }
}
