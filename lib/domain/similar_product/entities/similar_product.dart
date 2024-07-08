import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/domain/product/entities/price.dart' as pp;

part 'similar_product.freezed.dart';

@freezed
class SimilarProduct with _$SimilarProduct {
  const SimilarProduct._();
  const factory SimilarProduct({
    required String id,
    required String productName,
    required String productDescription,
    required String sku,
    required String skuPrice,
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
    required String attributeItemProductId,
    required int productMRP,
    required String productReview,
    required double productRating,
    required Price price,
    required List<String> productImages,
  }) = _SimilarProduct;

  factory SimilarProduct.empty() => SimilarProduct(
        id: '',
        productName: '',
        attributeItemProductId: '',
        productDescription: '',
        productMRP: 0,
        productRating: 0,
        productReview: '',
        sku: '',
        skuPrice: '',
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

  String get getPriceValue {
    if ((double.tryParse(price.price) ?? 0) > 0) {
      return price.price;
    } else if (startingPrice > 0) {
      return startingPrice.toString();
    } else if (productMRP > 0) {
      return productMRP.toString();
    } else {
      return skuPrice;
    }
  }

  Product get toProduct => Product(
        productId: ProductId(id),
        name: productName,
        productImages: productImages,
        skuPrice: IntegerValue(int.tryParse(skuPrice) ?? 0),
        startingPrice: startingPrice,
        attributeItem: attributeItem,
        attributeItemProductId: attributeItemProductId,
        price: pp.Price(price: price.price, quantity: price.quantity),
        productDescription: StringValue(productDescription),
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
