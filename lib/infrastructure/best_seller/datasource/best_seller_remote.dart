import 'package:dio/dio.dart';
import 'package:planit/domain/best_seller/entities/best_seller_product.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/best_seller/dtos/best_seller_product_dto.dart';
import 'package:planit/infrastructure/core/http/http.dart';

class BestSellerRemoteDatasource {
  final HttpService httpService;

  BestSellerRemoteDatasource({required this.httpService});

  Future<List<BestSellerProduct>> fetchBestSellerProducts() async {
    final res = await httpService.request(
      method: 'GET',
      url: '/products/bestSeller',
    );
    _exceptionChecker(res: res);
    final products = (res.data['items'] as List)
        .map((e) => BestSellerProductDto.fromJson(e).toDomain)
        .toList();

    return products;
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
