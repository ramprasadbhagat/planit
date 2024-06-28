import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product_image.dart';
part 'order_item.freezed.dart';

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required StringValue id,
    required StringValue orderId,
    required StringValue productId,
    required IntegerValue quantity,
    required IntegerValue unitPrice,
    required IntegerValue subTotal,
    required OrderItemProduct product,
    required List<ProductImage> productImage,
  }) = _OrderItem;
}

@freezed
class OrderItemProduct with _$OrderItemProduct {
  const factory OrderItemProduct({
    required StringValue id,
    required StringValue categoryId,
    required StringValue subcategoryId,
    required StringValue productName,
    required StringValue productDescription,
    required DateTime expiryDate,
    required IntegerValue productMRP,
    required IntegerValue productDiscount,
    required DateTime productDiscountDate,
    required StringValue sku,
  }) = _OrderItemProduct;
}
