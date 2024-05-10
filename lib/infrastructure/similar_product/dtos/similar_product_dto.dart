import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/similar_product/entities/similar_product.dart';
import 'package:planit/infrastructure/similar_product/dtos/price_dto.dart';

part 'similar_product_dto.freezed.dart';
part 'similar_product_dto.g.dart';

@freezed
class SimilarProductDto with _$SimilarProductDto {
  const SimilarProductDto._();
  const factory SimilarProductDto({
    @JsonKey(defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String categoryId,
    @JsonKey(defaultValue: '') required String subcategoryId,
    @JsonKey(defaultValue: '') required String productName,
    @JsonKey(defaultValue: '') required String productDescription,
    @JsonKey(defaultValue: '') required String sku,
    @JsonKey(name: 'sku_price', defaultValue: '') required String skuPrice,
    @JsonKey(name: 'sku_packsize', defaultValue: '')
    required String skuPacksize,
    @JsonKey(name: 'sku_content', defaultValue: '') required String skuContent,
    @JsonKey(defaultValue: '') required String startingPrice,
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
    required PriceDto price,
    required List<String> productImages,
  }) = _SimilarProductDto;

  factory SimilarProductDto.fromJson(Map<String, dynamic> json) =>
      _$SimilarProductDtoFromJson(json);

  SimilarProduct get toDomain => SimilarProduct(
        id: id,
        categoryId: categoryId,
        subcategoryId: subcategoryId,
        productName: productName,
        productDescription: productDescription,
        sku: sku,
        skuPrice: skuPrice,
        skuPacksize: skuPacksize,
        skuContent: skuContent,
        startingPrice: int.tryParse(startingPrice) ?? 0,
        productMRP: int.tryParse(productMRP) ?? 0,
        productRating: double.tryParse(productRating) ?? 0.0,
        productReview: productReview,
        ingredientsList: ingredientsList,
        nutritionalInformation: nutritionalInformation,
        isDeleted: isDeleted,
        isActive: isActive,
        isHighlighted: isHighlighted,
        isQuickPick: isQuickPick,
        discount: discount,
        attributeName: attributeName,
        attributeItem: attributeItem,
        price: price.toDomain,
        productImages: productImages,
      );
}