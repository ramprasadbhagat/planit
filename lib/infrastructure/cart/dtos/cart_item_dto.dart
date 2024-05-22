import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/infrastructure/cart/dtos/cart_product_dto.dart';
import 'package:planit/infrastructure/product/dtos/product_dto.dart';

part 'cart_item_dto.freezed.dart';
part 'cart_item_dto.g.dart';

@freezed
class CartItemDto with _$CartItemDto {
  const CartItemDto._();
  factory CartItemDto({
    @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
    required int totalPrice,
    @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
    required int totalDiscount,
    @JsonKey(name: 'products', defaultValue: <ProductDto>[])
    required List<CartProductDto> products,
  }) = _CartItemDto;

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);

  CartItem get toDomain => CartItem(
        totalDiscount: IntegerValue(totalDiscount),
        totalPrice: IntegerValue(totalPrice),
        products: products.map((e) => e.toDomain).toList(),
      );
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}
