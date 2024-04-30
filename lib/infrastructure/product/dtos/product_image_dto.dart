import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product_image.dart';

part 'product_image_dto.freezed.dart';
part 'product_image_dto.g.dart';

@freezed
class ProductImageDto with _$ProductImageDto {
  const ProductImageDto._();
  factory ProductImageDto({
    @JsonKey(name: 'imageUrl', defaultValue: '') required String imageUrl,
  }) = _ProductImageDto;

  factory ProductImageDto.fromJson(Map<String, dynamic> json) =>
      _$ProductImageDtoFromJson(json);

  ProductImage get toDomain => ProductImage(image: StringValue(imageUrl));
}
