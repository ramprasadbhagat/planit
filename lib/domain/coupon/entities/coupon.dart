import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon.freezed.dart';

@freezed
class Coupon with _$Coupon {
  const Coupon._();
  const factory Coupon({
    required String id,
    required String couponCode,
    required int amount,
    required String shortDescription,
  }) = _Coupon;
  factory Coupon.empty() => const Coupon(
        amount: 0,
        couponCode: '',
        id: '',
        shortDescription: '',
      );
}
