import 'package:dartz/dartz.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/api_failures.dart';

abstract class ICartRepository {
  Future<Either<ApiFailure, List<CartItem>>> getCart();
}
