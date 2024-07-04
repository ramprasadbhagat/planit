import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/quick_picks/entities/quick_picks.dart';
import 'package:planit/infrastructure/quick_picks/dtos/price_dto.dart';

part 'quick_picks_dto.freezed.dart';
part 'quick_picks_dto.g.dart';

@freezed
class QuickPicksDto with _$QuickPicksDto {
  const QuickPicksDto._();
  const factory QuickPicksDto({
    @JsonKey(defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String productName,
    @JsonKey(defaultValue: '') required String productDescription,
    @JsonKey(defaultValue: '') required String sku,
    @JsonKey(name: 'sku_price', defaultValue: '') required String skuPrice,
    @JsonKey(name: 'sku_packsize', defaultValue: '')
    required String skuPacksize,
    @JsonKey(name: 'sku_content', defaultValue: '') required String skuContent,
    @JsonKey(defaultValue: 0, readValue: intReadValue)
    required int startingPrice,
    @JsonKey(defaultValue: '') required String productMRP,
    @JsonKey(defaultValue: '') required String productReview,
    @JsonKey(defaultValue: '') required String productRating,
    @JsonKey(defaultValue: []) required List<String> ingredientsList,
    @JsonKey(defaultValue: '') required String nutritionalInformation,
    @JsonKey(defaultValue: false) required bool isDeleted,
    @JsonKey(defaultValue: false) required bool isActive,
    @JsonKey(defaultValue: false) required bool isHighlighted,
    @JsonKey(defaultValue: false) required bool isQuickPick,
    @JsonKey(defaultValue: '') required String discount,
    @JsonKey(defaultValue: '') required String attributeName,
    @JsonKey(defaultValue: '') required String attributeItemProductId,
    @JsonKey(defaultValue: '') required String attributeItem,
    required PriceDto price,
    required List<String> productImages,
  }) = _QuickPicksDto;

  factory QuickPicksDto.fromJson(Map<String, dynamic> json) =>
      _$QuickPicksDtoFromJson(json);

  QuickPicks get toDomain => QuickPicks(
        id: id,
        productName: productName,
        productDescription: productDescription,
        sku: sku,
        skuPrice: skuPrice,
        skuPacksize: skuPacksize,
        skuContent: skuContent,
        startingPrice: startingPrice,
        productMRP: int.tryParse(productMRP) ?? 0,
        productRating: double.tryParse(productRating) ?? 0.0,
        productReview: productReview,
        ingredientsList: ingredientsList,
        nutritionalInformation: nutritionalInformation,
        isDeleted: isDeleted,
        isActive: isActive,
        isHighlighted: isHighlighted,
        isQuickPick: isQuickPick,
        discount: discount,
        attributeName: attributeName,
        attributeItem: attributeItem,
        price: price.toDomain,
        productImages: productImages,
        attributeItemProductId: attributeItemProductId,
      );
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}
