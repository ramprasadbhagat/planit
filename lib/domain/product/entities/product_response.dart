import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/product/entities/product.dart';
part 'product_response.freezed.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    required List<Product> productList,
    required int totalCount,
  }) = _ProductResponse;
}
