import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:planit/domain/track_order/entity/track_order.dart';
import 'package:planit/infrastructure/track_order/dtos/track_order_dto.dart';

class TrackOrderLocalDataSource {
  const TrackOrderLocalDataSource();

  Future<TrackOrder> getTrackOrder() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/track_order.json'),
    );

    return TrackOrderDto.fromJson(res.data).toDomain;
  }

  Future<Unit> cancelOrder() async {
    json.decode(
      await rootBundle.loadString('assets/json/orders.json'),
    );
    return unit;
  }
}
