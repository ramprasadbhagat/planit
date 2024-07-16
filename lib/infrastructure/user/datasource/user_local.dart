import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/user/entities/user.dart';
import 'package:planit/infrastructure/user/dtos/current_user_dto.dart';

class UserLocalDataSource {
  Future<CurrentUser> fetchCurrentUser() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/current_user.json'),
    );

    return CurrentUserDto.fromJson(res).toDomain;
  }

  Future<void> updateCurrentUser(CurrentUser user) async {
    json.decode(
      await rootBundle.loadString('assets/json/current_user.json'),
    );

    return;
  }
}
