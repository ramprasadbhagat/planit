import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  Product._();
  factory Product({
    required String name,
  }) = _Product;

  factory Product.empty() => Product(name: '');
}
