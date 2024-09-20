import 'dart:async';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/domain/cart/repository/i_cart_repository.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/core/debouncer.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/order/entities/order.dart';
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
  final debouncer = Debouncer(milliseconds: 600);

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
              cartItem: CartItem.empty(),
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
          quantity: e.quantity,
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
      sendLocalServerCart: (value) async {
        emit(state.copyWith(isFetching: true));
        for (final element in state.cartData) {
          add(
            _AddToCart(
              product: element.toProduct,
              quantity: element.quantity,
            ),
          );
          //wait for previous call to complete
          await stream.firstWhere(
            (element) => !element.isFetching,
          );
        }
        add(const _ClearAllCartLocal());
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
      updateProductQuantity: (e) async {
        log('e.quantity:${e.quantity}');

        if (e.isLocal) {
          final updatedProductList = state.cartData.map((p) {
            if (e.product.productId.getValue() == p.productId &&
                e.product.attributeItemProductId == p.attributeItemProductId) {
              return p.copyWith(
                quantity: e.quantity,
              );
            }
            return p;
          }).toList();

          emit(
            state.copyWith(
              cartData: updatedProductList,
            ),
          );

          await debouncer.run(() async {
            log('updating quantity local....${e.quantity}');
            if (e.quantity > 0) {
              emit(state.copyWith(isFetching: true));
              final failureOrSuccess = await repository.addToCartLocal(
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
                (cartItems) => add(const _GetCartLocal()),
              );
            }
          });
        } else {
          final updatedProductList = state.cartItem.products.map((p) {
            if (e.product.productId == p.productId &&
                e.product.attributeItemId == p.attributeitemId) {
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

          await debouncer.run(() async {
            log('updating quantity....${e.quantity}');
            if (e.quantity > 0) {
              emit(state.copyWith(isFetching: true));
              final failureOrSuccess = await repository.updateCartQuantity(
                product: e.product,
                quantity: e.quantity,
                cartId: state.cartItem.id.getValue(),
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
            }
          });
        }
      },
      incrementQuantity: (value) {
        final qty = (value.isLocal
            ? state.getProductQuantityLocal(value.product)
            : state.getProductQuantity(value.product));
        add(
          CartEvent.updateProductQuantity(
            product: value.product,
            quantity: qty + 1,
            isLocal: value.isLocal,
          ),
        );
      },
      decrementQuantity: (value) {
        final qty = (value.isLocal
            ? state.getProductQuantityLocal(value.product)
            : state.getProductQuantity(value.product));

        if (qty == 1) {
          if (value.isLocal) {
            add(
              CartEvent.deletCartLocal(
                index: state.cartData.indexWhere(
                  (element) =>
                      element.productId == value.product.productId.getValue() &&
                      element.attributeItemProductId ==
                          value.product.attributeItemProductId,
                ),
              ),
            );
            return;
          }

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
              quantity: qty - 1,
              isLocal: value.isLocal,
            ),
          );
        }
      },
      fetchShippingCharge: (_FetchShippingCharge value) async {
        if (!state.cartItem.id.isValid()) return;
        emit(
          state.copyWith(
            isFetchingDeliveryCharge: true,
          ),
        );
        final failureOrSuccess = await repository.fetchDeliveryCharge(
          cartId: state.cartItem.id.getValue(),
          pincode: value.pincode,
        );

        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetchingDeliveryCharge: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (deliveryCharge) => emit(
            state.copyWith(
              isFetchingDeliveryCharge: false,
              deliveryCharges: deliveryCharge,
            ),
          ),
        );
      },
      reOrder: (_ReOrder value) async {
        for (final orderItem in value.order.orderItem) {
          add(
            CartEvent.addToCart(
              product: Product.empty().copyWith(
                attributeItemId: orderItem.attributeItemId,
                productId: orderItem.productId,
                inventory: Inventory.empty().copyWith(
                  finalPrice: orderItem.product.price.getValue().toDouble(),
                  quantity: orderItem.reOrderQuantity.getValue(),
                ),
              ),
              quantity: orderItem.quantity.getValue(),
            ),
          );
          //wait for previous call to complete
          await stream.firstWhere(
            (element) => !element.isFetching,
          );
        }
      },
    );
  }
}
