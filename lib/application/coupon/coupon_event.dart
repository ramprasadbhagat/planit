part of 'coupon_bloc.dart';

@freezed
class CouponEvent with _$CouponEvent {
  const factory CouponEvent.initialized() = _Initialized;
  const factory CouponEvent.fetch() = _Fetch;
  const factory CouponEvent.applyCoupon({
    required Coupon coupon,
  }) = _Apply;
  const factory CouponEvent.removeCoupon() = _Remove;
}
