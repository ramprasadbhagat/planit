import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/infrastructure/cart/dtos/cart_item_dto.dart';

class CartLocalDataSource {
  const CartLocalDataSource();

  Future<List<CartItem>> getCart() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/cart.json'),
    );
    return List.from(res).map((e) => CartItemDto.fromJson(e).toDomain).toList();
  }
}
