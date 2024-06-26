import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/domain/product/entities/price.dart' as pp;

part 'highlight.freezed.dart';

@freezed
class Highlight with _$Highlight {
  const Highlight._();
  const factory Highlight({
    required String id,
    required String categoryId,
    required String subcategoryId,
    required String productName,
    required String productDescription,
    required String productDiscount,
    required String sku,
    required String skuPrice,
    required String skuPacksize,
    required String skuContent,
    required int startingPrice,
    required List<String> ingredientsList,
    required String nutritionalInformation,
    required bool isDeleted,
    required bool isActive,
    required bool isHighlighted,
    required bool isQuickPick,
    required String discount,
    required String attributeName,
    required String attributeItem,
    required int productMRP,
    required String productReview,
    required double productRating,
    required Price price,
    required String attributeItemProductId,
    required List<String> productImages,
  }) = _Highlight;

  String get discountValue {
    if (productDiscount.isNotEmpty) {
      if (productDiscount.contains('%')) {
        return productDiscount.split('%').first.trim();
      } else {
        return productDiscount;
      }
    } else if (discount.isNotEmpty) {
      if (discount.contains('%')) {
        return discount.split('%').first.trim();
      } else {
        return discount;
      }
    }
    return '0';
  }

  factory Highlight.empty() => Highlight(
        id: '',
        categoryId: '',
        subcategoryId: '',
        productName: '',
        productDescription: '',
        productMRP: 0,
        productRating: 0,
        productReview: '',
        sku: '',
        skuPrice: '',
        skuPacksize: '',
        skuContent: '',
        startingPrice: 0,
        attributeItemProductId: '',
        ingredientsList: [],
        nutritionalInformation: '',
        isDeleted: false,
        isActive: false,
        isHighlighted: false,
        isQuickPick: false,
        discount: '',
        attributeName: '',
        productDiscount: '',
        attributeItem: '',
        price: Price.empty(),
        productImages: <String>[],
      );

  Product get toProduct => Product(
        productId: ProductId(id),
        name: productName,
        productImages: productImages,
        skuPrice: IntegerValue(int.tryParse(skuPrice) ?? 0),
        startingPrice: startingPrice,
        attributeItem: attributeItem,
        attributeItemProductId: attributeItemProductId,
        price: pp.Price(price: price.price, quantity: price.quantity),
      );
}

@freezed
class Price with _$Price {
  const Price._();
  const factory Price({
    required String price,
    required int quantity,
  }) = _Price;
  bool get isEditable => quantity > 1;
  factory Price.empty() => const Price(price: '', quantity: 0);
}
