import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/application/add_money/ui_state/payment_method.dart';
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
          paymentType: state.selectedPaymentMethod.when(
            card: () => 'card',
            razorpay: () => 'razorpay',
            wallet: () => 'wallet',
            cod: () => 'Cash',
          ),
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isFetching: false,
            ),
          ),
          (orderId) {
            state.selectedPaymentMethod.maybeWhen(
              orElse: () {
                add(
                  _ProcessPayment(
                    totalAmount: e.coupon.priceAfterCoupon(
                          e.cartItem.totalPrice.getValue(),
                        ) +
                        e.deliveryCharge,
                    phone: e.addressBook.phoneNumber,
                    orderId: orderId,
                  ),
                );
              },
              cod: () {
                emit(
                  state.copyWith(
                    isFetching: false,
                    apiFailureOrSuccessOption: some(right(unit)),
                  ),
                );
                add(const _FetchOrders());
                return;
              },
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
        state.selectedPaymentMethod.whenOrNull(
          razorpay: () {
            paymentRepository.initiatePayment(
              options: PaymentOptions(
                name: 'PlanIt',
                description: 'checkout order',
                amount: value.totalAmount,
                prefill: PrefillData(contact: value.phone),
              ),
              handlePaymentSuccess: (p0) async {
                log(
                  'handlePaymentSuccess $p0',
                );

                add(
                  _PaymentSuccess(
                    orderId: value.orderId,
                    paymentId: p0.paymentId,
                    paymentType: 'razorpay',
                  ),
                );
              },
              handlePaymentFailure: (p0) async {
                log(
                  'handlePaymentFailure $p0',
                );
                add(
                  _PaymentFailed(
                    orderId: value.orderId,
                    paymentType: 'razorpay',
                  ),
                );
              },
              handleExternalWallet: (p0) {
                log(
                  'handleExternalWallet $p0',
                );
              },
            );
          },
          wallet: () async {
            final failureOrSuccess =
                await paymentRepository.processPaymentFromWallet(
              amount: value.totalAmount.toInt(),
            );

            failureOrSuccess.fold((l) {
              add(
                _PaymentFailed(
                  orderId: value.orderId,
                  paymentType: 'wallet',
                ),
              );
            }, (r) {
              add(
                _PaymentSuccess(
                  orderId: value.orderId,
                  paymentId: null,
                  paymentType: 'wallet',
                ),
              );
            });
          },
        );
      },
      paymentSuccess: (_PaymentSuccess value) async {
        final failureOrSuccess = await repository.updateOrderPayment(
          orderId: value.orderId,
          success: true,
          transactionId: value.paymentId ?? '',
          paymentType: value.paymentType,
        );

        emit(
          state.copyWith(
            isFetching: false,
            apiFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
        add(const _FetchOrders());
      },
      paymentFailed: (_PaymentFailed value) async {
        final failureOrSuccess = await repository.updateOrderPayment(
          orderId: value.orderId,
          success: false,
          transactionId: '',
          paymentType: value.paymentType,
        );

        emit(
          state.copyWith(
            isFetching: false,
            apiFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
        add(const _FetchOrders());
      },
      handleExternalApp: (_HandleExternalApp value) {},
      changePaymentMethod: (_ChangePaymentMethod value) {
        emit(
          state.copyWith(
            selectedPaymentMethod: value.paymentMethod,
          ),
        );
      },
    );
  }
}
