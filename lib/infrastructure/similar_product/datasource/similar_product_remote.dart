import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/similar_product/entities/similar_product.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/similar_product/dtos/similar_product_dto.dart';

class SimilarProductRemoteDataSource {
  final HttpService httpService;

  SimilarProductRemoteDataSource({
    required this.httpService,
  });

  Future<List<SimilarProduct>> getSimilarProductsList({
    required String productId,
  }) async {
    final data = json.encode({'productId': productId});
    final res = await httpService.request(
      method: 'GET',
      url: 'products/getSimilarProduct',
      data: data,
    );
    _exceptionChecker(res: res);
    final products = res.data['items'];
    return List.from(products)
        .map(
          (e) => SimilarProductDto.fromJson(e).toDomain,
        )
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
