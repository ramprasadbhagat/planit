import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/highlights/entities/highlight.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/highlights/dtos/highlight_dto.dart';

class HighlightRemoteDataSource {
  final HttpService httpService;

  HighlightRemoteDataSource({
    required this.httpService,
  });

  Future<List<Highlight>> getHighlights() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products/getHighlighted',
    );
    _exceptionChecker(res: res);
    final categories = res.data['items'];
    return List.from(categories)
        .map((e) => HighlightDto.fromJson(e).toDomain)
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
