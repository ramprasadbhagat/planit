import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/pincode/entities/pincode.dart';
import 'package:planit/infrastructure/pincode/dtos/pincode_dto.dart';

class PincodeLocalDataSource {
  const PincodeLocalDataSource();

  Future<PinCode> savePincode({required String pincode}) async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/pincode.json'),
    );
    final pincodeData = res;
    return PincodeDto.fromJson(pincodeData).toDomain;
  }
}
