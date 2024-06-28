import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/wishlist/entities/wish_list.dart';
import 'package:planit/domain/wishlist/entities/wish_list_product.dart';
import 'package:planit/domain/wishlist/repository/i_wishlist_repository.dart';
import 'package:planit/locator.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_bloc.freezed.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final IWishlistRepository repository;
  WishlistBloc({required this.repository}) : super(WishlistState.initial()) {
    on<WishlistEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    WishlistEvent event,
    Emitter<WishlistState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(WishlistState.initial()),
      fetch: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getWishlist();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (wishlist) => emit(
            state.copyWith(
              isFetching: false,
              wishlist: wishlist,
              apiFailureOrSuccessOption: none(),
            ),
          ),
        );
      },
      addAllItemToCart: (_) {
        for (final e in state.selectedItemList) {
          add(
            _AddToCart(
              productId: e.id,
              price: e.startingPrice.toString(),
              quantity: '1',
              attributeItemProductID: e.attributeItemProductID,
            ),
          );
        }
      },
      addToWishlist: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.addToWishlist(
          productId: e.productId,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (unit) => add(const _Fetch()),
        );
      },
      addToCart: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.addToCart(
          productId: e.productId,
          price: e.price,
          quantity: e.quantity,
          attributeItemProductID: e.attributeItemProductID,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (unit) {
            final cartBloc = locator<CartBloc>();
            cartBloc.add(const CartEvent.fetch());
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
      selectItem: (e) {
        final selectedItemsList = <WishlistProduct>[
          ...state.selectedItemList,
          e.selectedItem,
        ];
        emit(
          state.copyWith(
            selectedItemList: selectedItemsList,
          ),
        );
      },
      disselectItem: (e) {
        final selectedItemsList = <WishlistProduct>[
          ...state.selectedItemList,
        ];
        selectedItemsList.remove(e.disselectedItem);
        emit(
          state.copyWith(
            selectedItemList: selectedItemsList,
          ),
        );
      },
      selectAll: (e) {
        final selectedItemList = <WishlistProduct>[
          ...state.getAllWishList,
        ];
        emit(
          state.copyWith(
            selectedItemList: selectedItemList,
          ),
        );
      },
      disselectAll: (e) {
        emit(
          state.copyWith(
            selectedItemList: [],
          ),
        );
      },
      removeFromWishlist: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.removeFromWishlist(
          productId: e.productId,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (unit) => add(const _Fetch()),
        );
      },
    );
  }
}
