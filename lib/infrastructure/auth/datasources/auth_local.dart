import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/auth/entities/otp.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/infrastructure/auth/dtos/auth_dto.dart';
import 'package:planit/infrastructure/auth/dtos/otp_dto.dart';

class AuthLocalDataSource {
  const AuthLocalDataSource();

  Future<Otp> initiateLogin({required MobileNumber mobileNumber}) async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/otp.json'),
    );
    final otpData = res['otp'];
    return OtpDto.fromJson(otpData).toDomain;
  }

  Future<Auth> verifyOTP({
    required MobileNumber mobileNumber,
    required OTP otp,
  }) async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/auth.json'),
    );
    return AuthDto.fromJson(res).toDomain;
  }
}
