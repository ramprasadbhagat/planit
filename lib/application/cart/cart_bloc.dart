import 'dart:async';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/domain/cart/repository/i_cart_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/presentation/search_product/serach_product_page.dart';

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
  final debouncer = Debouncer(milliseconds: 300);

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
        emit(state.copyWith(isFetching: true, cartItem: CartItem.empty()));
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
      sendLocalServerCart: (value) {
        emit(state.copyWith(isFetching: true));
        for (final element in state.cartData) {
          add(_AddToCart(product: element.toProduct, quantity: 1));
        }
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
      updateProductQuantity: (e) {
        log('e.quantity:${e.quantity}');
        final updatedProductList = state.cartItem.products.map((p) {
          if (e.product.productId == p.productId) {
            return p.copyWith(
              quantity: e.quantity,
            );
          }
          return p;
        }).toList();

        emit(
          state.copyWith(
            cartItem: state.cartItem.copyWith(
              products: updatedProductList,
            ),
          ),
        );

        debouncer.run(() {
          if (e.quantity > 0) {
            add(
              CartEvent.addToCart(
                product: e.product,
                quantity: e.quantity,
              ),
            );
          }
        });
      },
      incrementQuantity: (value) {
        add(
          CartEvent.updateProductQuantity(
            product: value.product,
            quantity: state.getProductQuantity(value.product) + 1,
          ),
        );
      },
      decrementQuantity: (value) {
        log('decrement: ${state.getProductQuantity(value.product)}');
        if (state.getProductQuantity(value.product) == 1) {
          add(
            CartEvent.removeFromCart(
              product: state.cartItem.products.firstWhere(
                (element) => element.productId == value.product.productId,
              ),
            ),
          );
        } else {
          add(
            CartEvent.updateProductQuantity(
              product: value.product,
              quantity: state.getProductQuantity(value.product) - 1,
            ),
          );
        }
      },
    );
  }
}
