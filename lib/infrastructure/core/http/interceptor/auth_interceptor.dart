import 'package:dio/dio.dart';
import 'package:planit/config.dart';
import 'package:flutter/foundation.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/locator.dart';
import 'package:planit/utils/storage_service.dart';

class AuthInterceptor extends Interceptor {
  final Config config;

  AuthInterceptor({
    required this.config,
  });

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final storageService = locator<StorageService>();
      final token = storageService.getBearerToken();
      if (token.isNotEmpty) {
        options.headers['Authorization'] = token;
      } else if (token.isEmpty) {
        options.headers['Authorization'] = 'Bearer ${config.sampleToken}';
      }
    } on CacheException catch (e) {
      debugPrint('load token failure: ${e.message}');
    }
    return super.onRequest(options, handler);
  }

  @override
  Future onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    return super.onError(err, handler);
  }
}
