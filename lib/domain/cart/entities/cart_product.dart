import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'cart_product.freezed.dart';

@freezed
class CartProduct with _$CartProduct {
  const CartProduct._();
  const factory CartProduct({
    required String id,
    required ProductId productId,
    required String image,
    required String productName,
    required String productDescription,
    required String attributeitem,
    required String itemPrice,
    required int quantity,
    required int totalPrice,
    required int discount,
  }) = _CartProduct;

  factory CartProduct.empty() => CartProduct(
        id: '',
        productId: ProductId(''),
        image: '',
        productName: '',
        productDescription: '',
        attributeitem: '',
        itemPrice: '',
        quantity: 0,
        totalPrice: 0,
        discount: 0,
      );

  Map<String, dynamic> get toMap => {
        'productId': productId.getValue(),
        'quantity': quantity.toString(),
        'unitPrice': (double.tryParse(itemPrice) ?? 0.0).toInt(),
        'subTotal': totalPrice,
      };
}
