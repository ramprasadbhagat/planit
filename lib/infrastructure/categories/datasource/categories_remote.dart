import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/infrastructure/categories/dtos/category_dto.dart';

class CategoriesRemoteDataSource {
  final HttpService httpService;

  CategoriesRemoteDataSource({
    required this.httpService,
  });

  Future<List<Category>> getCategories() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'categories/list',
    );
    _exceptionChecker(res: res);
    final categories = res.data['Result'];
    return List.from(categories)
        .map((e) => CategoryDto.fromJson(e).toDomain)
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
