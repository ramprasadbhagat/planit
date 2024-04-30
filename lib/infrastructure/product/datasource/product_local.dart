import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/infrastructure/product/dtos/product_dto.dart';

class ProductLocalDataSource {
  const ProductLocalDataSource();

  Future<List<Product>> getHighlightedProduct() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/products.json'),
    );
    final categories = res['items'];
    return List.from(categories)
        .map((e) => ProductDto.fromJson(e).toDomain)
        .toList();
  }

  Future<List<Product>> getSubCategoryProduct() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/products.json'),
    );
    final categories = res['items'];
    return List.from(categories)
        .map((e) => ProductDto.fromJson(e).toDomain)
        .toList();
  }
}
