import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/domain/product/entities/price.dart' as pp;

part 'quick_picks.freezed.dart';

@freezed
class QuickPicks with _$QuickPicks {
  const QuickPicks._();
  const factory QuickPicks({
    required String id,
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
    required String attributeItemProductId,
    required int productMRP,
    required String productReview,
    required double productRating,
    required Price price,
    required List<String> productImages,
    required StringValue attributeItemId,
    required bool backOrder,
  }) = _QuickPicks;

  factory QuickPicks.empty() => QuickPicks(
        id: '',
        productName: '',
        productDescription: '',
        attributeItemProductId: '',
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
        attributeItemId: StringValue(''),
        backOrder: false,
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
        productDescription: StringValue(productDescription),
        attributeItemId: attributeItemId,
        backOrder: backOrder,
        productRating: productRating,
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
