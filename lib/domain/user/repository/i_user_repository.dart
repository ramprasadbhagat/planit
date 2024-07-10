import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/user/entities/user.dart';

abstract class IUserRepository {
  Future<Either<ApiFailure, CurrentUser>> fetchCurrentUser();
  Future<Either<ApiFailure, Unit>> updateCurrentUser({
    required CurrentUser user,
  });
}
