import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/product/entities/price.dart';

part 'price_dto.freezed.dart';
part 'price_dto.g.dart';

@freezed
class PriceDto with _$PriceDto {
  const PriceDto._();
  const factory PriceDto({
    @JsonKey(defaultValue: '', readValue: stringReadValue)
    required String price,
    @JsonKey(defaultValue: 0) required int quantity,
  }) = _PriceDto;

  factory PriceDto.fromJson(Map<String, dynamic> json) =>
      _$PriceDtoFromJson(json);

  Price get toDomain => Price(price: price, quantity: quantity);
}

String stringReadValue(Map json, String key) {
  if (json[key] is int) return json[key].toString();
  if (json[key] is String) return json[key];
  return '';
}
