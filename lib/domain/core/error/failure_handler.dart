// ignore_for_file: type_literal_in_constant_pattern

import 'dart:async';
import 'dart:io';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/exception.dart';

import 'package:flutter/services.dart';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    switch (error.runtimeType) {
      case MockException:
        return ApiFailure.other((error as MockException).message);
      case CacheException:
        return ApiFailure.other((error as CacheException).message);
      case ServerException:
        final message = (error as ServerException).message;
        if (message.toLowerCase() == 'unauthorized' ||
            message.toLowerCase() ==
                'status: 401, message: token has either expired or its not valid') {
          return const ApiFailure.authenticationFailed();
        }

        return ApiFailure.serverError(message);
      case SocketException:
        return const ApiFailure.poorConnection();
      case TimeoutException:
        return const ApiFailure.serverTimeout();
      case PlatformException:
        return ApiFailure.other('${(error as PlatformException).message}');
      case OtherException:
        return ApiFailure.other((error as OtherException).message);

      default:
        return ApiFailure.other(error.toString());
    }
  }
}
