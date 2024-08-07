import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product_image.dart';
import 'package:planit/domain/product/value/value_objects.dart';
part 'order_item.freezed.dart';

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required StringValue id,
    required StringValue orderId,
    required StringValue attributeItemId,
    required ProductId productId,
    required IntegerValue quantity,
    required IntegerValue unitPrice,
    required IntegerValue subTotal,
    required OrderItemProduct product,
    required List<ProductImage> productImage,
    required IntegerValue reOrderQuantity,
  }) = _OrderItem;

  factory OrderItem.empty() => OrderItem(
        id: StringValue(''),
        orderId: StringValue(''),
        productId: ProductId(''),
        quantity: IntegerValue(0),
        unitPrice: IntegerValue(0),
        subTotal: IntegerValue(0),
        product: OrderItemProduct.empty(),
        productImage: [],
        attributeItemId: StringValue(''),
        reOrderQuantity: IntegerValue(0),
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
    required IntegerValue price,
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
        price: IntegerValue(0),
      );
}
