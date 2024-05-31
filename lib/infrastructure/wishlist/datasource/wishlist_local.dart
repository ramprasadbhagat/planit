import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/wishlist/entities/wish_list.dart';
import 'package:planit/infrastructure/wishlist/dtos/wishlist_dto.dart';

class WishlistLocalDataSource {
  const WishlistLocalDataSource();

  Future<List<Wishlist>> getWishlist() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/wishlist.json'),
    );

    return List.from(res).map((e) => WishlistDto.fromJson(e).toDomain).toList();
  }
}
