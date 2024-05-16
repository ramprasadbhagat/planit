import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();
  factory ProductDto({
    @JsonKey(name: 'id', defaultValue: '') required String productId,
    @JsonKey(name: 'productName', defaultValue: '') required String productName,
    @JsonKey(name: 'productImages', defaultValue: [])
    required List<String> productImages,
    @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
    required int skuPrice,
    @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
    required int startingPrice,
    @JsonKey(name: 'attributeItem', defaultValue: '')
    required String attributeItem,
    @JsonKey(defaultValue: '') required String attributeItemProductId,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Product get toDomain => Product(
        productId: ProductId(productId),
        name: productName,
        productImages: productImages,
        skuPrice: IntegerValue(skuPrice),
        startingPrice: startingPrice,
        attributeItem: attributeItem,
        attributeItemProductId: attributeItemProductId,
      );
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}
