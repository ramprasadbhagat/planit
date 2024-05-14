import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/quick_picks/entities/quick_picks.dart';
import 'package:planit/infrastructure/quick_picks/dtos/quick_picks_dto.dart';

class QuickPicksLocalDataSource {
  const QuickPicksLocalDataSource();

  Future<List<QuickPicks>> getQuickPicks() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/similar_product.json'),
    );
    final categories = res['items'];
    return List.from(categories)
        .map((e) => QuickPicksDto.fromJson(e).toDomain)
        .toList();
  }
}
