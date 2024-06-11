import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/sub_categories/dtos/sub_category_dto.dart';

class SubCategoryRemoteDataSource {
  final HttpService httpService;

  SubCategoryRemoteDataSource({
    required this.httpService,
  });

  Future<List<SubCategory>> getShopByCategoryList() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'categories/list?pid=6659cbd69140ee0012ab2d7e',
    );
    _exceptionChecker(res: res);
    final subCategories = res.data['SubCategory'];
    return List.from(subCategories)
        .map((e) => SubCategoryDto.fromJson(e).toDomain)
        .toList();
  }

  Future<List<SubCategory>> getShopByOcassionList() async {
    final res = await httpService.request(
      method: 'GET',
      url:
          'categories/list?pid=6659a8d8b109ee67c895f954&pageSize=2&pageNumber=2',
    );
    _exceptionChecker(res: res);
    final subCategories = res.data['SubCategory'];
    return List.from(subCategories)
        .map((e) => SubCategoryDto.fromJson(e).toDomain)
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
