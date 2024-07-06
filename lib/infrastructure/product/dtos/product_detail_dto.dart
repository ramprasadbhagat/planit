import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/product/entities/product_detail.dart';

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
      name: 'productImages',
      defaultValue: [],
      readValue: parseProductImages,
    )
    required List<String> productImages,
  }) = _ProductDetailDto;

  factory ProductDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailDtoFromJson(json);

  ProductDetail get toDomain => ProductDetail(
        productDescription: productDescription,
        productImages: productImages,
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
