import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/price.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  Product._();
  factory Product({
    required ProductId productId,
    required String name,
    required List<String> productImages,
    required IntegerValue skuPrice,
    required int startingPrice,
    required String attributeItem,
    required String attributeItemProductId,
    required Price price,
  }) = _Product;

  String get getPriceValue {
    if ((double.tryParse(price.price) ?? 0) > 0) {
      return price.price;
    } else if (startingPrice > 0) {
      return startingPrice.toString();
    } else {
      return skuPrice.getValue().toString();
    }
  }

  CartProductLocal get getCartProductLocal {
    return CartProductLocal(
      productId: productId.getValue(),
      name: name,
      productImages: productImages,
      skuPrice: double.tryParse(skuPrice.toString()) ?? 0,
      startingPrice: startingPrice,
      attributeItem: attributeItem,
      attributeItemProductId: attributeItemProductId,
      price: price,
    );
  }

  factory Product.empty() => Product(
        productId: ProductId(''),
        name: '',
        productImages: <String>[],
        skuPrice: IntegerValue(0),
        startingPrice: 0,
        attributeItem: '',
        attributeItemProductId: '',
        price: Price.empty(),
      );
}
