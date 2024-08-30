import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/value/value_objects.dart';
part 'best_seller_product.freezed.dart';

@freezed
class BestSellerProduct with _$BestSellerProduct {
  const factory BestSellerProduct({
    required ProductId id,
    required StringValue productName,
    required StringValue productImage,
    required bool isOOS,
    required StringValue attributeItemId,
  }) = _BestSellerProduct;
}
