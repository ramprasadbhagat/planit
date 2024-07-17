import 'dart:async';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/order/repository/i_order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final IOrderRepository repository;
  OrderBloc({required this.repository}) : super(OrderState.initial()) {
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
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
            add(const _FetchOrders());
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
    );
  }
}
