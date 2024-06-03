import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/wishlist/entities/wish_list.dart';
import 'package:planit/infrastructure/wishlist/dtos/wishlist_product_dto.dart';

part 'wishlist_dto.freezed.dart';
part 'wishlist_dto.g.dart';

@freezed
class WishlistDto with _$WishlistDto {
  const WishlistDto._();
  factory WishlistDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(name: 'user_id', defaultValue: '') required String userId,
    @JsonKey(name: 'product_id', defaultValue: '') required String productId,
    @JsonKey(name: 'product', defaultValue: [])
    required List<WishlistProductDto> product,
  }) = _WishlistDto;

  factory WishlistDto.fromJson(Map<String, dynamic> json) =>
      _$WishlistDtoFromJson(json);

  Wishlist get toDomain => Wishlist(
        id: id,
        userId: userId,
        productId: productId,
        product: product.map((e) => e.toDomain).toList(),
      );
}
