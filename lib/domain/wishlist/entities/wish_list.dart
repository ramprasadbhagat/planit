import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/wishlist/entities/wish_list_product.dart';

part 'wish_list.freezed.dart';

@freezed
class Wishlist with _$Wishlist {
  const Wishlist._();
  factory Wishlist({
    required String id,
    required String userId,
    required String productId,
    required List<WishlistProduct> product,
  }) = _Wishlist;
  factory Wishlist.empty() =>
      Wishlist(id: '', userId: '', productId: '', product: []);
}
