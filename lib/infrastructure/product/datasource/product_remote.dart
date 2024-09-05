import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
import 'package:planit/domain/product/entities/product_image.dart';
import 'package:planit/domain/product/entities/product_response.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/product/dtos/product_detail_dto.dart';
import 'package:planit/infrastructure/product/dtos/product_dto.dart';
import 'package:planit/infrastructure/product/dtos/product_image_dto.dart';
import 'package:planit/infrastructure/product/dtos/product_response_dto.dart';
import 'package:planit/infrastructure/product/repository/product_repository.dart';

class ProductRemoteDataSource {
  final HttpService httpService;

  ProductRemoteDataSource({
    required this.httpService,
  });

  Future<List<Product>> getHighlightedProduct() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products/getHighlighted',
    );
    _exceptionChecker(res: res);
    final categories = res.data['items'];
    return List.from(categories)
        .map((e) => ProductDto.fromJson(e).toDomain)
        .toList();
  }

  Future<List<Product>> getQuickPackProduct() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products/getQuickPick',
    );
    _exceptionChecker(res: res);
    final categories = res.data['items'];
    return List.from(categories)
        .map((e) => ProductDto.fromJson(e).toDomain)
        .toList();
  }

  Future<List<Product>> getSubCategoryProduct(String subcategoryId) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products/getProductByCategory?categoryID=$subcategoryId',
    );
    _exceptionChecker(res: res);
    final categories = res.data['items'];
    return List.from(categories)
        .map((e) => ProductDto.fromJson(e).toDomain)
        .toList();
  }

  Future<ProductResponse> getSearchProduct({
    required String searchKey,
    required int pageNumber,
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products?pageSize=10&pageNumber=$pageNumber&search=$searchKey',
    );
    _exceptionChecker(res: res);
    return ProductResponseDto.fromJson(res.data).toDomain;
  }

  Future<List<ProductImage>> getProductImage(ProductId productId) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'productImages/${productId.getValue()}',
    );
    _exceptionChecker(res: res);
    return List.from(res.data)
        .map((e) => ProductImageDto.fromJson(e).toDomain)
        .toList();
  }

  Future<ProductDetail> getProductDetail(ProductId productId) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'products/${productId.getValue()}',
    );
    _exceptionChecker(res: res);
    final productDetail = res.data['items'];
    return ProductDetailDto.fromJson(productDetail).toDomain;
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
