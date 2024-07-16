import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/similar_product/entities/similar_product.dart';
import 'package:planit/infrastructure/similar_product/dtos/price_dto.dart';

part 'similar_product_dto.freezed.dart';
part 'similar_product_dto.g.dart';

@freezed
class SimilarProductDto with _$SimilarProductDto {
  const SimilarProductDto._();
  const factory SimilarProductDto({
    @JsonKey(defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String productName,
    @JsonKey(defaultValue: '') required String productDescription,
    @JsonKey(defaultValue: '') required String sku,
    @JsonKey(name: 'sku_price', defaultValue: '') required String skuPrice,
    @JsonKey(defaultValue: '', readValue: stringReadValue)
    required String startingPrice,
    @JsonKey(defaultValue: '') required String productMRP,
    @JsonKey(defaultValue: '') required String productReview,
    @JsonKey(defaultValue: '') required String productRating,
    @JsonKey(defaultValue: []) required List<String> ingredientsList,
    @JsonKey(defaultValue: '') required String nutritionalInformation,
    @JsonKey(defaultValue: false) required bool isDeleted,
    @JsonKey(defaultValue: false) required bool isActive,
    @JsonKey(defaultValue: false) required bool isHighlighted,
    @JsonKey(defaultValue: false) required bool isQuickPick,
    @JsonKey(defaultValue: '') required String discount,
    @JsonKey(defaultValue: '') required String attributeName,
    @JsonKey(defaultValue: '') required String attributeItem,
    @JsonKey(defaultValue: '') required String attributeItemId,
    @JsonKey(defaultValue: '') required String attributeItemProductId,
    @JsonKey(defaultValue: {}) required Map<String, dynamic> price,
    @JsonKey(defaultValue: []) required List<String> productImages,
  }) = _SimilarProductDto;

  factory SimilarProductDto.fromJson(Map<String, dynamic> json) =>
      _$SimilarProductDtoFromJson(json);

  SimilarProduct get toDomain => SimilarProduct(
        id: id,
        productName: productName,
        productDescription: productDescription,
        sku: sku,
        skuPrice: skuPrice,
        startingPrice: int.tryParse(startingPrice) ?? 0,
        productMRP: int.tryParse(productMRP) ?? 0,
        productRating: double.tryParse(productRating) ?? 0.0,
        productReview: productReview,
        ingredientsList: ingredientsList,
        nutritionalInformation: nutritionalInformation,
        attributeItemProductId: attributeItemProductId,
        isDeleted: isDeleted,
        isActive: isActive,
        isHighlighted: isHighlighted,
        isQuickPick: isQuickPick,
        discount: discount,
        attributeName: attributeName,
        attributeItem: attributeItem,
        price: PriceDto.fromJson(price).toDomain,
        productImages: productImages,
        attributeItemId: StringValue(attributeItemId),
      );
}

String stringReadValue(Map json, String key) {
  if (json[key] is int) return json[key].toString();
  if (json[key] is String) return json[key];
  return '';
}
