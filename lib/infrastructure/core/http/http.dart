import 'dart:async';

import 'package:dio/dio.dart';
import 'package:planit/config.dart';

class HttpService {
  late Dio _dio;
  Dio dio() => _dio;

  HttpService({
    required Config config,
    required List<Interceptor> interceptors,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        sendTimeout: config.httpSendTimeout,
        connectTimeout: config.httpConnectTimeout,
        receiveTimeout: config.httpReceiveTimeout,
      ),
    );
    _dio.interceptors.addAll([
      ...interceptors,
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  HttpService.mockDio(Dio dio) : _dio = dio;

  Future<Response> request({
    required String method,
    required String url,
    dynamic data = const {}, // can be Map<String, dynamic> or FormData
    ResponseType responseType = ResponseType.json,
    bool overrideBaseUrl = false,
    String cacheControl = '',
    Map<String, dynamic> headers = const <String, dynamic>{},
  }) async {
    try {
      if (overrideBaseUrl) _dio.options.baseUrl = url;

      _dio.options.method = method;
      // _dio.options.responseType = responseType;
      // _dio.options.headers['cache-control'] = cacheControl;
      for (final headerInfo in headers.entries) {
        _dio.options.headers[headerInfo.key] = headerInfo.value;
      }

      return await _dio.request(
        url,
        data: data,
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse && e.response != null) {
        return e.response!;
      }

      rethrow;
    }
  }
}
