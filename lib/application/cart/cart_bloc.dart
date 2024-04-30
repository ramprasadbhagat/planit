import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
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
        final failureOrSuccess = await repository.getCart();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cartItems) => emit(
            state.copyWith(
              cartItems: cartItems,
              apiFailureOrSuccessOption: none(),
            ),
          ),
        );
      },
      addToCart: (_AddToCart e) async {
        final failureOrSuccess = await repository.addToCart(
          product: e.product,
          quantity: e.quantity,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (cartItems) => add(const _Fetch()),
        );
      },
    );
  }
}
