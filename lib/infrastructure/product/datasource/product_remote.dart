import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/product/dtos/product_dto.dart';

class ProductRemoteDataSource {
  final HttpService httpService;

  ProductRemoteDataSource({
    required this.httpService,
  });

  Future<List<Product>> getHighlightedProduct() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products',
    );
    _exceptionChecker(res: res);
    final categories = res.data['items'];
    return List.from(categories)
        .map((e) => ProductDto.fromJson(e).toDomain)
        .toList();
  }

  Future<List<Product>> getSubCategoryProduct(SubCategory subcategory) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products',
    );
    _exceptionChecker(res: res);
    final categories = res.data['items'];
    return List.from(categories)
        .map((e) => ProductDto.fromJson(e).toDomain)
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
