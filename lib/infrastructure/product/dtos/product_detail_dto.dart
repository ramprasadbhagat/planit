import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/infrastructure/product/dtos/price_dto.dart';
import 'package:planit/infrastructure/product/dtos/product_attribute_dto.dart';

part 'product_detail_dto.freezed.dart';
part 'product_detail_dto.g.dart';

@freezed
class ProductDetailDto with _$ProductDetailDto {
  const ProductDetailDto._();
  factory ProductDetailDto({
    @JsonKey(name: 'id', defaultValue: '') required String productId,
    @JsonKey(name: 'productDescription', defaultValue: '')
    required String productDescription,
    @JsonKey(
      defaultValue: '',
      name: 'productName',
    )
    required String name,
    @JsonKey(
      defaultValue: 0,
      readValue: intReadValue,
    )
    required int startingPrice,
    @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
    required Map<String, dynamic> price,
    @JsonKey(
      name: 'productImages',
      defaultValue: [],
      readValue: parseProductImages,
    )
    required List<String> productImages,
    required List<Map<String, dynamic>> attribute,
    @JsonKey(defaultValue: false) required bool backOrder,
  }) = _ProductDetailDto;

  factory ProductDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailDtoFromJson(json);

  ProductDetail get toDomain => ProductDetail(
        productDescription: StringValue(productDescription),
        productImages: productImages,
        name: name,
        price: PriceDto.fromJson(price).toDomain,
        productId: ProductId(productId),
        startingPrice: startingPrice,
        attribute: attribute
            .map((e) => ProductAttributeDto.fromJson(e).toDomain)
            .toList(),
        backOrder: backOrder,
      );
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

Map<String, dynamic> priceReadValue(Map json, String key) {
  if (json[key] is int) return {'price': json[key]};
  if (json[key] is String) return {'price': int.tryParse(json[key]) ?? 0};
  if (json[key] is Map) return json[key];
  return {};
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is double) return (json[key] as double).toInt();
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}
