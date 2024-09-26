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
    required String attributeItemId,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'PATCH',
      url: 'carts',
      data: {
        'user_id': userId,
        'product_id': productId,
        'quantity': quantity,
        'cart_id': cartId,
        'attributeItemId': attributeItemId,
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
      'attributeItemId': cartProduct.attributeitemId.getOrDefaultValue(''),
    };

    final res = await httpService.request(
      method: 'PATCH',
      url: '/carts/deleteItemfromCart',
      data: postData,
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<double> getDeliveryCharge({
    required String cartId,
    required String pincode,
  }) async {
    final postData = {
      'cartId': cartId,
      'pincode': pincode,
    };

    final res = await httpService.request(
      method: 'POST',
      url: '/shippingCharge/getShippingCharge',
      data: postData,
    );

    _exceptionChecker(res: res);

    final shippingCharge = res.data['Shipping_Charge'];

    if (shippingCharge == 'Free') {
      return 0.0;
    } else {
      if (shippingCharge is int) {
        return shippingCharge.toDouble();
      }

      if (shippingCharge is double) {
        return shippingCharge;
      }

      return 0;
    }
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
