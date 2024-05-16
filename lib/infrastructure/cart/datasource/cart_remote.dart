import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/cart/dtos/cart_item_dto.dart';
import 'package:planit/infrastructure/core/http/http.dart';

class CartRemoteDataSource {
  final HttpService httpService;

  CartRemoteDataSource({
    required this.httpService,
  });

  Future<CartItem> getCart() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'carts/getCart/662897e47acc8e00121fe28f',
    );
    _exceptionChecker(res: res);
    return CartItemDto.fromJson(res.data).toDomain;
  }

  Future<Unit> addToCart({
    required String productId,
    required String attributeItemProductId,
    required int quantity,
    required int totalPrice,
  }) async {
    final res = await httpService.request(
      method: 'POST',
      url: 'carts',
      data: {
        'user_id': '662897e47acc8e00121fe28f',
        'product_id': productId,
        'quantity': quantity,
        'total_price': totalPrice,
        'attributeItemProductId': attributeItemProductId,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> removeFromCart({
    required String productId,
  }) async {
    final res = await httpService.request(
      method: 'DELETE',
      url: 'carts/$productId',
    );
    _exceptionChecker(res: res);
    return unit;
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
