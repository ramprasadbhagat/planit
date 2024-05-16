import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const CartItem._();
  factory CartItem({
    required IntegerValue totalPrice,
    required List<CartProduct> products,
  }) = _CartItem;

  factory CartItem.empty() => CartItem(
        totalPrice: IntegerValue(0),
        products: <CartProduct>[],
      );
}
