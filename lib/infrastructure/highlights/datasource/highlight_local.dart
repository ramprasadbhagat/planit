import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/highlights/entities/highlight.dart';
import 'package:planit/infrastructure/highlights/dtos/highlight_dto.dart';

class HighlightLocalDataSource {
  const HighlightLocalDataSource();

  Future<List<Highlight>> getHighlights() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/highlight.json'),
    );
    final categories = res['items'];
    return List.from(categories)
        .map((e) => HighlightDto.fromJson(e).toDomain)
        .toList();
  }
}
