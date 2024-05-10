import 'package:freezed_annotation/freezed_annotation.dart';

part 'similar_product.freezed.dart';

@freezed
class SimilarProduct with _$SimilarProduct {
  const factory SimilarProduct({
    required String id,
    required String categoryId,
    required String subcategoryId,
    required String productName,
    required String productDescription,
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
    required List<String> productImages,
  }) = _SimilarProduct;

  factory SimilarProduct.empty() => SimilarProduct(
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
        ingredientsList: [],
        nutritionalInformation: '',
        isDeleted: false,
        isActive: false,
        isHighlighted: false,
        isQuickPick: false,
        discount: '',
        attributeName: '',
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