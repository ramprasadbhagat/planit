import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/infrastructure/order/dtos/order_dto.dart';

class OrderLocalDataSource {
  const OrderLocalDataSource();
  Future<List<Order>> getOrders() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/orders.json'),
    );
    final orders = res['items'];
    return List.from(orders).map((e) => OrderDto.fromJson(e).toDomain).toList();
  }
}
