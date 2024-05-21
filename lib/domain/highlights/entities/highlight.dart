import 'package:freezed_annotation/freezed_annotation.dart';

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