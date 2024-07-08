import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';

part 'coupon_dto.freezed.dart';
part 'coupon_dto.g.dart';

@freezed
class CouponDto with _$CouponDto {
  const CouponDto._();
  const factory CouponDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'couponCode', defaultValue: '') required String couponCode,
    @JsonKey(name: 'rate', defaultValue: 0, readValue: intReadValue)
    required int rate,
    @JsonKey(name: 'shortDescription', defaultValue: '')
    required String shortDescription,
    @JsonKey(name: 'type', defaultValue: '') required String type,
  }) = _CouponDto;

  Coupon get toDomain => Coupon(
        id: id,
        couponCode: couponCode,
        rate: rate,
        type: type == CouponType.percentage.name
            ? CouponType.percentage
            : CouponType.fixedAmount,
        shortDescription: shortDescription,
      );

  factory CouponDto.fromJson(Map<String, dynamic> json) =>
      _$CouponDtoFromJson(json);
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is double) return (json[key] as double).toInt();
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}
