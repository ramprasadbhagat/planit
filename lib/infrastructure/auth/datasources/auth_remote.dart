import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/auth/entities/otp.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/infrastructure/auth/dtos/auth_dto.dart';
import 'package:planit/infrastructure/auth/dtos/otp_dto.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/utils/storage_service.dart';

class AuthRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  AuthRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<Otp> initiateLogin({required MobileNumber mobileNumber}) async {
    final headers = {'Content-Type': 'application/json'};
    final data = json.encode({'mobile_number': mobileNumber.getValue()});
    final res = await httpService.request(
      method: 'POST',
      url: 'auth/login',
      headers: headers,
      data: data,
    );
    _exceptionChecker(res: res);
    final otpData = res.data['otp'];
    return OtpDto.fromJson(otpData).toDomain;
  }

  Future<Auth> verifyOTP({
    required MobileNumber mobileNumber,
    required OTP otp,
  }) async {
    final headers = {'Content-Type': 'application/json'};
    final data = json.encode(
      {'mobile_number': mobileNumber.getValue(), 'otp': otp.getValue()},
    );
    final res = await httpService.request(
      method: 'POST',
      url: 'auth/verifyOtp',
      headers: headers,
      data: data,
    );
    _exceptionChecker(res: res);
    return AuthDto.fromJson(res.data).toDomain;
  }

  Future<void> storeToken({
    required Auth auth,
  }) async {
    await storageService.addAuthData(auth);
  }

  Future<Auth> tokenValid() {
    return storageService.getAuthData(0);
  }

  Future<void> logout() async {
    await storageService.clearAllAuthData();
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
