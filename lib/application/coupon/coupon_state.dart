part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {
  const CouponState._();
  const factory CouponState({
    required List<Coupon> couponList,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool isApplying,
    required Coupon appliedCoupon,
  }) = _CouponState;

  factory CouponState.initial() => CouponState(
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        appliedCoupon: Coupon.empty(),
        couponList: [],
        isApplying: false,
      );
}
