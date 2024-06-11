import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/infrastructure/sub_categories/dtos/sub_category_dto.dart';

class SubCategoryLocalDataSource {
  const SubCategoryLocalDataSource();

  Future<List<SubCategory>> getSubCategoryList() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/sub_category.json'),
    );
    final subCat = res['SubCategory'];
    return List.from(subCat)
        .map((e) => SubCategoryDto.fromJson(e).toDomain)
        .toList();
  }
}
