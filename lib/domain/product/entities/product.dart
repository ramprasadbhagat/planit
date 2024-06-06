import 'package:freezed_annotation/freezed_annotation.dart';
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
