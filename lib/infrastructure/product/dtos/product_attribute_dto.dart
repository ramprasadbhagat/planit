import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
part 'product_attribute_dto.freezed.dart';
part 'product_attribute_dto.g.dart';

@freezed
class ProductAttributeDto with _$ProductAttributeDto {
  const ProductAttributeDto._();
  const factory ProductAttributeDto({
    @JsonKey(defaultValue: '') required String attributeItemId,
    @JsonKey(defaultValue: '') required String attributeItemProductId,
    @JsonKey(defaultValue: '', readValue: parseAttributeItemValue)
    required String attributeItemValue,
    @JsonKey(defaultValue: '', readValue: parseAttributeItemName)
    required String attributeItemName,
    @JsonKey(defaultValue: '', readValue: stringReadValue)
    required String price,
    @JsonKey(
      defaultValue: 0,
    )
    required int quantity,
  }) = _ProductAttributeDto;

  factory ProductAttributeDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeDtoFromJson(json);

  ProductAttribute get toDomain => ProductAttribute(
        attributeItemId: StringValue(attributeItemId),
        attributeItemProductId: StringValue(attributeItemProductId),
        attributeItemValue: StringValue(attributeItemValue),
        attributeItemName: StringValue(attributeItemName),
        price: price,
        quantity: quantity,
      );
}

String parseAttributeItemValue(Map json, String key) {
  if (json['attributeItems'] is Map &&
      (json['attributeItems'] as Map).containsKey('item')) {
    return json['attributeItems']['item'] as String;
  }

  return '';
}

String parseAttributeItemName(Map json, String key) {
  if (json['item'] is Map && (json['item'] as Map).containsKey('name')) {
    return json['item']['name'] as String;
  }

  return '';
}

String stringReadValue(Map json, String key) {
  if (json[key] is int) return json[key].toString();
  if (json[key] is String) return json[key];
  return '';
}
