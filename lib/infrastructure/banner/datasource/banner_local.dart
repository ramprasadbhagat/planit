import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/banner/entities/banner.dart';
import 'package:planit/infrastructure/banner/dtos/banner_dto.dart';

class BannersLocalDataSource {
  const BannersLocalDataSource();

  Future<List<Banner>> getBanner() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/banner.json'),
    );
    final banners = res['items'];
    return List.from(banners)
        .map((e) => BannerDto.fromJson(e).toDomain)
        .toList();
  }
}
