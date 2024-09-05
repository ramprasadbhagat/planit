import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/product/entities/product_response.dart';
import 'package:planit/infrastructure/product/dtos/product_dto.dart';
part 'product_response_dto.freezed.dart';
part 'product_response_dto.g.dart';

@freezed
class ProductResponseDto with _$ProductResponseDto {
  const ProductResponseDto._();

  const factory ProductResponseDto({
    @JsonKey(defaultValue: <ProductDto>[]) required List<ProductDto> items,
    @JsonKey(defaultValue: 0) required int totalCount,
  }) = _ProductResponseDto;

  factory ProductResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseDtoFromJson(json);

  ProductResponse get toDomain => ProductResponse(
        productList: items.map((e) => e.toDomain).toList(),
        totalCount: totalCount,
      );
}
