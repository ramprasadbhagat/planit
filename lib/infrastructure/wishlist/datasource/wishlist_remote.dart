import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/wishlist/entities/wish_list.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/wishlist/dtos/wishlist_dto.dart';

class WishlistRemoteDataSource {
  final HttpService httpService;

  WishlistRemoteDataSource({
    required this.httpService,
  });

  Future<List<Wishlist>> getWishlist() async {
    final res = await httpService.request(
      method: 'GET',
      url: 'favourites/product/662897e47acc8e00121fe28f',
    );
    _exceptionChecker(res: res);
    return List.from(res.data)
        .map((e) => WishlistDto.fromJson(e).toDomain)
        .toList();
  }

  Future<Unit> addToWishlist({
    required String productId,
  }) async {
    final res = await httpService.request(
      method: 'POST',
      url: 'favourites',
      data: {
        'user_id': '662897e47acc8e00121fe28f',
        'product_id': productId,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> addToCart({
    required String productId,
    required String quantity,
    required String price,
  }) async {
    final res = await httpService.request(
      method: 'POST',
      url: 'favourites/addItemtoCart',
      data: {
        'user_id': '662897e47acc8e00121fe28f',
        'product_id': productId,
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
