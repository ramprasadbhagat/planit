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

  factory OrderItem.empty() => OrderItem(
        id: StringValue(''),
        orderId: StringValue(''),
        productId: StringValue(''),
        quantity: IntegerValue(0),
        unitPrice: IntegerValue(0),
        subTotal: IntegerValue(0),
        product: OrderItemProduct.empty(),
        productImage: [],
      );
}

@freezed
class OrderItemProduct with _$OrderItemProduct {
  const factory OrderItemProduct({
    required StringValue id,
    required StringValue productName,
    required StringValue productDescription,
    required DateTime expiryDate,
    required IntegerValue productMRP,
    required IntegerValue productDiscount,
    required DateTime productDiscountDate,
    required StringValue sku,
    required double rating,
  }) = _OrderItemProduct;

  factory OrderItemProduct.empty() => OrderItemProduct(
        id: StringValue(''),
        productName: StringValue(''),
        productDescription: StringValue(''),
        expiryDate: DateTime(2024),
        productMRP: IntegerValue(0),
        productDiscount: IntegerValue(0),
        productDiscountDate: DateTime(2024),
        sku: StringValue(''),
        rating: 1,
      );
}
