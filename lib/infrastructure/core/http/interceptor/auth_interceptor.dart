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
      print('object $token');
      if (token.isNotEmpty) {
        options.headers['Authorization'] = '${token}mkkkeeele';
      } else {
        options.headers['Authorization'] = 'Bearer ${config.sampleToken}';
      }
    } on CacheException catch (e) {
      debugPrint('load token failure: ${e.message}');
    }
    options.headers['Content-Type'] = 'application/json; charset=UTF-8';

    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    try {
      if (response.data['errors'] != null &&
          response.data['errors'].isNotEmpty &&
          (response.data['errors'][0]['message'] == 'authentication failed' ||
              response.data['errors'][0]['message'] ==
                  'status: 401, message: token has either expired or its not valid')) {
        // final newJwt = await _refreshToken();
        // if (newJwt != null) {
        //   final newResponse = await _retry(newJwt, response.requestOptions);

        //   return handler.next(newResponse);
        // }
      }

      return super.onResponse(response, handler);
    } catch (e) {
      return super.onResponse(response, handler);
    }
  }

  @override
  Future onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    return super.onError(err, handler);
  }
}
