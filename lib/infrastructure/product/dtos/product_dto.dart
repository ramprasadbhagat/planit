import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/product/entities/product.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();
  factory ProductDto({
    @JsonKey(name: 'productName', defaultValue: '') required String productName,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Product get toDomain => Product(name: productName);
}
