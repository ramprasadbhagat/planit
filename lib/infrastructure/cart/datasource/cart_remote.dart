import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/cart/dtos/cart_item_dto.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/utils/storage_service.dart';

class CartRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  CartRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<CartItem> getCart() async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'GET',
      url: 'carts/getCart/$userId',
    );
    _exceptionChecker(res: res);
    return CartItemDto.fromJson(res.data).toDomain;
  }

  Future<Unit> addToCart({
    required String productId,
    required String attributeItemProductId,
    required int quantity,
    required int totalPrice,
    required String attributeItemId,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'carts',
      data: {
        'user_id': userId,
        'product_id': productId,
        'quantity': quantity,
        'total_price': totalPrice,
        'attributeItemProductId': attributeItemProductId,
        'attributeItemId': attributeItemId,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> updateCartItem({
    required String productId,
    required String cartId,
    required int quantity,
  }) async {
    final res = await httpService.request(
      method: 'PATCH',
      url: 'carts',
      data: {
        'product_id': productId,
        'quantity': quantity,
        'cart_id': cartId,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> removeFromCart({
    required CartProduct cartProduct,
  }) async {
    final userId = storageService.getUserId();
    final postData = {
      'user_id': userId,
      'product_id': cartProduct.productId.getValue(),
      'attributeItemProductId': null,
    };

    if (cartProduct.attributeitemId.isValid()) {
      postData['attributeItemId'] = cartProduct.attributeitemId.getValue();
    }

    final res = await httpService.request(
      method: 'PATCH',
      url: '/carts/deleteItemfromCart',
      data: postData,
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
