import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'product_image.freezed.dart';

@freezed
class ProductImage with _$ProductImage {
  const ProductImage._();
  factory ProductImage({required StringValue image}) = _ProductImage;

  factory ProductImage.empty() => ProductImage(image: StringValue(''));
}
