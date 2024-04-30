import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail.freezed.dart';

@freezed
class ProductDetail with _$ProductDetail {
  const ProductDetail._();
  factory ProductDetail({
    required String productDescription,
    required List<String> productImages,
  }) = _ProductDetail;

  factory ProductDetail.empty() => ProductDetail(
        productDescription: '',
        productImages: <String>[],
      );
}
