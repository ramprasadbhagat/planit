import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/my_complain/entities/complain.dart';
import 'package:planit/infrastructure/my_complain/dtos/complain_dto.dart';

class ComplainLocalDataSource {
  const ComplainLocalDataSource();

  Future<List<Complain>> getComplainList() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/complain.json'),
    );
    final data = res['items'];
    return List.from(data)
        .map((e) => ComplainDto.fromJson(e).toDomain)
        .toList();
  }
}
