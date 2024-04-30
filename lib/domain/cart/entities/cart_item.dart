import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const CartItem._();
  factory CartItem({
    required String productId,
    required IntegerValue quantity,
    required IntegerValue totalPrice,
    required List<Product> products,
  }) = _CartItem;

  factory CartItem.empty() => CartItem(
        productId: '',
        quantity: IntegerValue(0),
        totalPrice: IntegerValue(0),
        products: <Product>[],
      );
  Product get product => products.firstOrNull ?? Product.empty();
}
