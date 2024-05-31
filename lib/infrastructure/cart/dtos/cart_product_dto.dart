import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'cart_product_dto.freezed.dart';
part 'cart_product_dto.g.dart';

@freezed
class CartProductDto with _$CartProductDto {
  const CartProductDto._();
  const factory CartProductDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'productName', defaultValue: '') required String productName,
    @JsonKey(name: 'productDescription', defaultValue: '')
    required String productDescription,
    @JsonKey(name: 'attributeitem', defaultValue: '')
    required String attributeitem,
    @JsonKey(
      name: 'itemPrice',
      defaultValue: '0.00',
      readValue: stringReadValue,
    )
    required String itemPrice,
    @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
    required int quantity,
    @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
    required int totalPrice,
    @JsonKey(defaultValue: 0) required int discount,
  }) = _CartProductDto;

  CartProduct get toDomain => CartProduct(
        id: id,
        productId: ProductId(productId),
        image: image,
        productName: productName,
        productDescription: productDescription,
        attributeitem: attributeitem,
        itemPrice: itemPrice,
        quantity: quantity,
        totalPrice: totalPrice,
        discount: discount,
      );

  factory CartProductDto.fromJson(Map<String, dynamic> json) =>
      _$CartProductDtoFromJson(json);
}

String stringReadValue(Map json, String key) {
  if (json[key] is int) return json[key].toString();
  if (json[key] is String) return json[key];
  return '';
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}
