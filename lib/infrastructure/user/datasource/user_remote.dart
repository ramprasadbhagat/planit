import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/user/entities/user.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/user/dtos/current_user_dto.dart';
import 'package:planit/utils/storage_service.dart';

class UserRemoteDateSource {
  final HttpService httpService;
  final StorageService storageService;

  UserRemoteDateSource({
    required this.httpService,
    required this.storageService,
  });

  Future<CurrentUser> fetchCurrentUser() async {
    final userId = storageService.getUserId();

    final res = await httpService.request(
      method: 'GET',
      url: 'users/$userId',
    );
    _exceptionChecker(res: res);

    return CurrentUserDto.fromJson(res.data).toDomain;
  }

  Future<void> updateCurrentUser(CurrentUser user) async {
    final userId = storageService.getUserId();

    final res = await httpService.request(
      method: 'PATCH',
      url: 'users/$userId',
      data: {
        'firstName': user.fullName.firstName,
        'lastName': user.fullName.lastName,
        'email': user.emailAddress.getValue(),
        'mobile_number': user.mobileNumber.getValue(),
      },
    );
    _exceptionChecker(res: res);

    return;
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}
