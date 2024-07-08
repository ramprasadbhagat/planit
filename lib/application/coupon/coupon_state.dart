part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {
  const CouponState._();
  const factory CouponState({
    required List<Coupon> couponList,
    required List<Coupon> searchCouponList,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool isApplying,
    required Coupon appliedCoupon,
  }) = _CouponState;

  factory CouponState.initial() => CouponState(
        apiFailureOrSuccessOption: none(),
        searchCouponList: [],
        isFetching: false,
        appliedCoupon: Coupon.empty(),
        couponList: [],
        isApplying: false,
      );
}
