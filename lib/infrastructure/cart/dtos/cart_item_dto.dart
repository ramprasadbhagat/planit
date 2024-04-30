import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/infrastructure/product/dtos/product_dto.dart';

part 'cart_item_dto.freezed.dart';
part 'cart_item_dto.g.dart';

@freezed
class CartItemDto with _$CartItemDto {
  const CartItemDto._();
  factory CartItemDto({
    @JsonKey(name: 'product_id', defaultValue: '') required String productId,
    @JsonKey(name: 'quantity', defaultValue: '') required String quantity,
    @JsonKey(name: 'total_price', defaultValue: '') required String totalPrice,
    @JsonKey(name: 'products', defaultValue: <ProductDto>[])
    required List<ProductDto> products,
  }) = _CartItemDto;

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);

  CartItem get toDomain => CartItem(
        productId: productId,
        quantity: IntegerValue.fromString(quantity),
        totalPrice: IntegerValue.fromString(totalPrice),
        products: products.map((e) => e.toDomain).toList(),
      );
}
