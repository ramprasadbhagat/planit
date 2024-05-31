import 'package:dio/dio.dart';
import 'package:planit/domain/banner/entities/banner.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/banner/dtos/banner_dto.dart';
import 'package:planit/infrastructure/core/http/http.dart';

class BannersRemoteDataSource {
  final HttpService httpService;

  BannersRemoteDataSource({
    required this.httpService,
  });

  Future<List<Banner>> getBanner() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'banner',
    );
    _exceptionChecker(res: res);
    final banner = res.data['items'];
    return List.from(banner)
        .map((e) => BannerDto.fromJson(e).toDomain)
        .toList();
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
