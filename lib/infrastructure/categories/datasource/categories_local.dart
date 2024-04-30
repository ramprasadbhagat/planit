import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/infrastructure/categories/dtos/category_dto.dart';

class CategoriesLocalDataSource {
  const CategoriesLocalDataSource();

  Future<List<Category>> getCategories() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/categories.json'),
    );
    final categories = res['items'];
    return List.from(categories)
        .map((e) => CategoryDto.fromJson(e).toDomain)
        .toList();
  }
}
