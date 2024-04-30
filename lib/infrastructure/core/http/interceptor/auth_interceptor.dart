import 'package:dio/dio.dart';
import 'package:planit/config.dart';
import 'package:flutter/foundation.dart';
import 'package:planit/domain/core/error/exception.dart';

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
      final token = config.sampleToken;
      if (token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
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
