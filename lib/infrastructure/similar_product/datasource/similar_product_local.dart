import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/similar_product/entities/similar_product.dart';
import 'package:planit/infrastructure/similar_product/dtos/similar_product_dto.dart';

class SimilarProductLocalDataSource {
  const SimilarProductLocalDataSource();

  Future<List<SimilarProduct>> getSimilarProductList() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/similar_product.json'),
    );
    final categories = res['items'];
    return List.from(categories)
        .map((e) => SimilarProductDto.fromJson(e).toDomain)
        .toList();
  }
}
