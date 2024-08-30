import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/best_seller/entities/best_seller_product.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/value/value_objects.dart';
part 'best_seller_product_dto.freezed.dart';
part 'best_seller_product_dto.g.dart';

@freezed
class BestSellerProductDto with _$BestSellerProductDto {
  const BestSellerProductDto._();
  const factory BestSellerProductDto({
    @JsonKey(defaultValue: '') required String productId,
    @JsonKey(defaultValue: '') required String productName,
    @JsonKey(defaultValue: '') required String productImage,
    @JsonKey(defaultValue: '') required String attributeItemId,
    @JsonKey(defaultValue: 0) required int stock,
    @JsonKey(defaultValue: false) required bool backOrder,
  }) = _BestSellerProductDto;

  factory BestSellerProductDto.fromJson(Map<String, dynamic> json) =>
      _$BestSellerProductDtoFromJson(json);

  BestSellerProduct get toDomain => BestSellerProduct(
        id: ProductId(productId),
        productName: StringValue(productName),
        productImage: StringValue(productImage),
        isOOS: stock <= 0 && !backOrder,
        attributeItemId: StringValue(attributeItemId),
      );
}
