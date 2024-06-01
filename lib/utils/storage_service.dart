import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/auth/entities/user.dart';
import 'package:planit/utils/hive_constants.dart';

class StorageService {
  late Box<Auth> _authBox;

  Future init() async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    Hive.init(path);
    _registAdapters();
    await _openBox();
  }

  void _registAdapters() {
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(AuthAdapter());
  }

  Future<void> _openBox() async {
    _authBox = await Hive.openBox<Auth>(HiveConstants.authBox);
  }

  Future<void> addAuthData(Auth auth) async {
    await _authBox.add(auth);
  }

  Future<Auth> getAuthData(int index) async {
    if (index < _authBox.length) {
      return _authBox.getAt(index) ?? Auth.empty();
    }
    return Auth.empty();
  }

  Future<String> getBearerToken() async {
    final token = _authBox.getAt(0)!.token;
    return 'Bearer $token';
  }

  Future<String> getUserId() async {
    final id = _authBox.getAt(0)!.user.id;
    return id;
  }

  Future<void> deleteAuthData(int index) async {
    await _authBox.deleteAt(index);
  }

  Future<void> clearAllAuthData() async {
    await _authBox.clear();
  }
}
