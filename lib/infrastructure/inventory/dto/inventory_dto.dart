import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';

part 'inventory_dto.freezed.dart';
part 'inventory_dto.g.dart';

@freezed
class InventoryDto with _$InventoryDto {
  const InventoryDto._();
  const factory InventoryDto({
    @JsonKey(defaultValue: '') required String attributeName,
    @JsonKey(defaultValue: '') required String attributeItemName,
    @JsonKey(defaultValue: '') required String attributeItemId,
    @JsonKey(defaultValue: 0) required double listPrice,
    @JsonKey(defaultValue: 0) required double finalPrice,
    @JsonKey(defaultValue: 0) required double discountPercentage,
    @JsonKey(defaultValue: 0) required int quantity,
  }) = _InventoryDto;

  factory InventoryDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryDtoFromJson(json);

  Inventory get toDomain => Inventory(
        quantity: quantity,
        itemWeight: '$attributeItemName$attributeName',
        attributeItemId: attributeItemId,
        discountPercentage: discountPercentage,
        finalPrice: finalPrice,
        listPrice: listPrice,
      );
}

String stringReadValue(Map json, String key) {
  if (json[key] is int) return json[key].toString();
  if (json[key] is String) return json[key];
  return '';
}
