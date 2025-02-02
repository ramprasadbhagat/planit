import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/domain/coupon/repository/i_coupon_repository.dart';

part 'coupon_event.dart';
part 'coupon_state.dart';
part 'coupon_bloc.freezed.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  final ICouponRepository repository;
  CouponBloc({required this.repository}) : super(CouponState.initial()) {
    on<CouponEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(CouponEvent event, Emitter<CouponState> emit) async {
    await event.map(
      initialized: (_) async => emit(CouponState.initial()),
      fetch: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getCouponList();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              appliedCoupon: Coupon.empty(),
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (list) => emit(
            state.copyWith(
              isFetching: false,
              couponList: list,
              searchCouponList: [],
              apiFailureOrSuccessOption: none(),
            ),
          ),
        );
      },
      couponSearch: (e) {
        if (e.couponCode.isNotEmpty) {
          final coupons = <Coupon>[];
          for (final element in state.couponList) {
            if (element.couponCode.contains(e.couponCode)) {
              coupons.add(element);
            }
          }
          emit(state.copyWith(searchCouponList: coupons));
        } else {
          emit(state.copyWith(searchCouponList: []));
        }
      },
      removeCoupon: (_) async {
        emit(state.copyWith(isFetching: true));
        await Future.delayed(const Duration(milliseconds: 600));
        emit(state.copyWith(isFetching: false, appliedCoupon: Coupon.empty()));
      },
      clearCoupons: (_) {
        emit(state.copyWith(searchCouponList: []));
      },
      applyCoupon: (_Apply e) async {
        emit(
          state.copyWith(
            isApplying: true,
            appliedCoupon: e.coupon,
            apiFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await repository.applyCoupon(
          coupon: e.coupon,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              isApplying: false,
              appliedCoupon: Coupon.empty(),
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (unit) {
            emit(
              state.copyWith(
                isFetching: false,
                isApplying: false,
                appliedCoupon: e.coupon,
                searchCouponList: [],
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
