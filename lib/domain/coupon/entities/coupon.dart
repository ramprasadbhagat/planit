import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon.freezed.dart';

@freezed
class Coupon with _$Coupon {
  const Coupon._();
  const factory Coupon({
    required String id,
    required String couponCode,
    required CouponType type,
    required int rate,
    required String shortDescription,
    required bool isActive,
  }) = _Coupon;

  int amount(int price) {
    if (type == CouponType.fixedAmount) {
      return rate;
    } else if (type == CouponType.percentage) {
      return (price * rate) ~/ 100;
    }
    return 0;
  }

  int priceAfterCoupon(int price) {
    if (amount(price) >= price) {
      return 0;
    } else if (amount(price) > 0 && amount(price) < price) {
      return (price - amount(price));
    } else {
      return price;
    }
  }

  factory Coupon.empty() => const Coupon(
        rate: 0,
        couponCode: '',
        id: '',
        shortDescription: '',
        type: CouponType.other,
        isActive: false,
      );
}

enum CouponType { fixedAmount, percentage, other }
