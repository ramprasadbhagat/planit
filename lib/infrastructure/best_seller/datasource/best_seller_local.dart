import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/best_seller/entities/best_seller_product.dart';
import 'package:planit/infrastructure/best_seller/dtos/best_seller_product_dto.dart';

class BestSellerLocalDatasource {
  const BestSellerLocalDatasource();
  Future<List<BestSellerProduct>> fetchBestSellerProducts() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/best_seller.json'),
    );
    final banners = res['items'];
    return List.from(banners)
        .map((e) => BestSellerProductDto.fromJson(e).toDomain)
        .toList();
  }
}
