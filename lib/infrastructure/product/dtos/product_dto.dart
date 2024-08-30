import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/infrastructure/product/dtos/price_dto.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();
  factory ProductDto({
    @JsonKey(name: 'id', defaultValue: '') required String productId,
    @JsonKey(name: 'productName', defaultValue: '') required String productName,
    @JsonKey(
      name: 'productImages',
      defaultValue: [],
      readValue: parseProductImages,
    )
    required List<String> productImages,
    @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
    required int skuPrice,
    @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
    required int startingPrice,
    @JsonKey(name: 'attributeItem', defaultValue: '')
    required String attributeItem,
    @JsonKey(name: 'attributeItemId', defaultValue: '')
    required String attributeItemProductId,
    @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
    required Map<String, dynamic> price,
    @JsonKey(name: 'productDescription', defaultValue: '')
    required String productDescription,
    @JsonKey(defaultValue: false) required bool backOrder,
    @JsonKey(
      defaultValue: '',
    )
    required String productRating,
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
        price: PriceDto.fromJson(price).toDomain,
        productDescription: StringValue(productDescription),
        attributeItemId: StringValue(attributeItemProductId),
        backOrder: backOrder,
        productRating: double.tryParse(productRating) ?? 0.0,
      );
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}

Map<String, dynamic> priceReadValue(Map json, String key) {
  if (json[key] is int) return {'price': json[key]};
  if (json[key] is String) return {'price': int.tryParse(json[key]) ?? 0};
  if (json[key] is Map) return json[key];
  return {};
}

List parseProductImages(dynamic json, String key) {
  if (json[key] is List) {
    return (json[key] as List).map((e) {
      if (e is String) {
        return e;
      }
      if (e is Map && e.containsKey('image')) {
        return e['image'] as String;
      }

      return '';
    }).toList();
  }
  return [];
}
