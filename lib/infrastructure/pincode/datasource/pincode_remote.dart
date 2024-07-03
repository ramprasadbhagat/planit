import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/pincode/entities/pincode.dart';
import 'package:planit/domain/pincode/entities/pincode_check.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/utils/storage_service.dart';

class PincodeRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  PincodeRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<PincodeCheck> checkPincode({
    required String pincode,
  }) async {
    final headers = {'Content-Type': 'application/json'};
    final data = json.encode({'pincode': pincode});
    final res = await httpService.request(
      method: 'POST',
      url: 'pincode/check',
      headers: headers,
      data: data,
    );
    _exceptionChecker(res: res);
    final pincodeData = res.data;
    if (pincodeData['msg'] == 'Pincode found') {
      return PincodeCheck(pincode: pincode);
    } else {
      return PincodeCheck.empty();
    }
  }

  Future<Pincode> savePincode({required String pincode}) async {
    final headers = {'Content-Type': 'application/json'};
    final data = json.encode({'pincode': pincode});
    final res = await httpService.request(
      method: 'POST',
      url: 'pincode',
      headers: headers,
      data: data,
    );
    _exceptionChecker(res: res);
    // final pincodeData = res.data;
    if (res.statusCode == 200) {
      return Pincode(pincode: pincode);
    } else {
      return Pincode.empty();
    }
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.data['errors'] != null && res.data['errors'].isNotEmpty) {
      throw ServerException(message: res.data['errors']);
    } else if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}
