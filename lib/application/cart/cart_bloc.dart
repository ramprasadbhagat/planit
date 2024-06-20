import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/domain/cart/repository/i_cart_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartRepository repository;
  CartBloc({
    required this.repository,
  }) : super(CartState.initial()) {
    on<CartEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(CartEvent event, Emitter<CartState> emit) async {
    await event.map(
      initialized: (_) async => emit(CartState.initial()),
      fetch: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getCart();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cart) => emit(
            state.copyWith(
              isFetching: false,
              cartItem: cart,
              apiFailureOrSuccessOption: none(),
            ),
          ),
        );
      },
      addToCart: (_AddToCart e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.addToCart(
          product: e.product,
          quantity: e.quantity,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cartItems) => add(const _Fetch()),
        );
      },
      addToCartLocal: (_AddToCartLocal e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.addToCartLocal(
          product: e.product,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cartItems) => add(const _GetCartLocal()),
        );
      },
      getCartLocal: (_GetCartLocal e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getCartLocal();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cart) => emit(
            state.copyWith(
              isFetching: false,
              cartData: cart,
              apiFailureOrSuccessOption: none(),
            ),
          ),
        );
      },
      deletCartLocal: (_DeleteCartLocal e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess =
            await repository.deleteCartLocal(index: e.index);
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cartItems) => add(const _GetCartLocal()),
        );
      },
      clearAllCartLocal: (_ClearAllCartLocal e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.clearAllCartLocal();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cartItems) => add(const _GetCartLocal()),
        );
      },
      removeFromCart: (_RemoveFromCart e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.removeFromCart(
          cartProduct: e.product,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cartItems) => add(const _Fetch()),
        );
      },
    );
  }
}
