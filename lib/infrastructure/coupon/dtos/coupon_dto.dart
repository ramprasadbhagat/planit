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
    @JsonKey(name: 'amount', defaultValue: '') required String amount,
    @JsonKey(name: 'shortDescription', defaultValue: '')
    required String shortDescription,
  }) = _CouponDto;

  Coupon get toDomain => Coupon(
        id: id,
        couponCode: couponCode,
        amount: int.tryParse(amount) ?? 0,
        shortDescription: shortDescription,
      );

  factory CouponDto.fromJson(Map<String, dynamic> json) =>
      _$CouponDtoFromJson(json);
}
