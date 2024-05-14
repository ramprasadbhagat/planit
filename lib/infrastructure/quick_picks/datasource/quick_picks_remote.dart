import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/quick_picks/entities/quick_picks.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/quick_picks/dtos/quick_picks_dto.dart';

class QuickPicksRemoteDataSource {
  final HttpService httpService;

  QuickPicksRemoteDataSource({
    required this.httpService,
  });

  Future<List<QuickPicks>> getQuickPicks() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products/getQuickPick',
    );
    _exceptionChecker(res: res);
    final categories = res.data['items'];
    return List.from(categories)
        .map((e) => QuickPicksDto.fromJson(e).toDomain)
        .toList();
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
