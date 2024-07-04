import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/wishlist/entities/wish_list.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/wishlist/dtos/wishlist_dto.dart';
import 'package:planit/utils/storage_service.dart';

class WishlistRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  WishlistRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<List<Wishlist>> getWishlist() async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'GET',
      url: 'favourites/product/$userId',
    );
    _exceptionChecker(res: res);
    return List.from(res.data)
        .map((e) => WishlistDto.fromJson(e).toDomain)
        .toList();
  }

  Future<Unit> addToWishlist({
    required String productId,
    required String attributeItemId,
    required String quantity,
    required String price,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'favourites',
      data: {
        'user_id': userId,
        'product_id': productId,
        'attributeItemId': attributeItemId,
        'quantity': quantity,
        'price': price,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> updateProductQuantity({
    required String productId,
    required String quantity,
  }) async {
    final res = await httpService.request(
      method: 'PATCH',
      url: 'favourites',
      data: {
        'id': productId,
        'quantity': quantity,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> addToCart({
    required String productId,
    required String quantity,
    required String price,
    required String attributeItemId,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'favourites/addItemtoCart',
      data: {
        'user_id': userId,
        'product_id': productId,
        'attributeItemId': attributeItemId,
        'quantity': quantity,
        'price': price,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> removeFromWishlist({
    required String productId,
  }) async {
    final res = await httpService.request(
      method: 'DELETE',
      url: 'favourites/$productId',
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
