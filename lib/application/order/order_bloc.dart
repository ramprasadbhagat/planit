import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/order/repository/i_order_repository.dart';
import 'package:planit/domain/payment/entities/payment_options.dart';
import 'package:planit/domain/payment/repository/i_payment_repository.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final IOrderRepository repository;
  final IPaymentRepository paymentRepository;
  OrderBloc({
    required this.repository,
    required this.paymentRepository,
  }) : super(OrderState.initial()) {
    on<OrderEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    OrderEvent event,
    Emitter<OrderState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(OrderState.initial()),
      submitOrder: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.submitOrder(
          address: e.addressBook,
          cartItem: e.cartItem,
          date: e.date,
          coupon: e.coupon,
          deliveryCharge: e.deliveryCharge,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isFetching: false,
            ),
          ),
          (res) {
            if (e.isCOD) {
              emit(
                state.copyWith(
                  isFetching: false,
                  apiFailureOrSuccessOption: some(right(unit)),
                ),
              );
              add(const _FetchOrders());
              return;
            }
            add(
              _ProcessPayment(
                totalAmount: e.coupon
                        .priceAfterCoupon(e.cartItem.totalPrice.getValue()) +
                    e.deliveryCharge,
                phone: e.addressBook.phoneNumber,
              ),
            );
          },
        );
      },
      fetchOrders: (value) async {
        emit(
          state.copyWith(
            isFetchingOrders: true,
          ),
        );

        final failureOrSuccess = await repository.getAllOrders();
        failureOrSuccess.fold((l) {
          emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isFetchingOrders: false,
            ),
          );
        }, (r) {
          emit(
            state.copyWith(
              apiFailureOrSuccessOption: none(),
              isFetchingOrders: false,
              orders: r,
            ),
          );
        });
      },
      processPayment: (_ProcessPayment value) {
        paymentRepository.initiatePayment(
          options: PaymentOptions(
            name: 'checkout',
            description: 'checkout order',
            amount: value.totalAmount,
            prefill: PrefillData(contact: value.phone),
          ),
          handlePaymentSuccess: (p0) {
            log(
              'handlePaymentSuccess $p0',
            );
            add(const _PaymentSuccess());
          },
          handlePaymentFailure: (p0) {
            log(
              'handlePaymentFailure $p0',
            );
            add(const _PaymentFailed());
          },
          handleExternalWallet: (p0) {
            log(
              'handleExternalWallet $p0',
            );
            add(const _HandleExternalApp());
          },
        );
      },
      paymentSuccess: (_PaymentSuccess value) {
        emit(
          state.copyWith(
            isFetching: false,
            apiFailureOrSuccessOption: some(right(unit)),
          ),
        );
        add(const _FetchOrders());
      },
      paymentFailed: (_PaymentFailed value) {
        emit(
          state.copyWith(
            isFetching: false,
            apiFailureOrSuccessOption: some(right(unit)),
          ),
        );
        add(const _FetchOrders());
      },
      handleExternalApp: (_HandleExternalApp value) {},
    );
  }
}
