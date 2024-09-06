import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';
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
        if (state.isUpdateQuantity) {
          emit(
            state.copyWith(
              showSnackBar: false,
            ),
          );
        } else {
          emit(
            state.copyWith(
              isFetching: true,
              wishlist: [],
              showSnackBar: false,
            ),
          );
        }

        final failureOrSuccess = await repository.getWishlist();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              isUpdateQuantity: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (wishlist) => emit(
            state.copyWith(
              isFetching: false,
              wishlist: wishlist,
              isUpdateQuantity: false,
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
              price: e.price.toString(),
              quantity: e.quantity.toString(),
              attributeItemId: e.attributeItemId,
            ),
          );
        }
        emit(state.copyWith(selectedItemList: []));
      },
      updateProductQuantity: (e) async {
        emit(
          state.copyWith(
            isUpdateQuantity: true,
            showSnackBar: false,
          ),
        );
        if (int.tryParse(e.quantity)! > 0) {
          final failureOrSuccess = await repository.updateProductQuantity(
            productId: e.id,
            quantity: e.quantity,
          );
          failureOrSuccess.fold(
            (failure) => emit(
              state.copyWith(
                isUpdateQuantity: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            ),
            (success) {
              final item = state.selectedItemList.firstWhereOrNull(
                (element) {
                  return (element.uid == e.id);
                },
              );

              final list = <WishlistProduct>[...state.selectedItemList];
              list.remove(item);
              emit(
                state.copyWith(
                  selectedItemList: list,
                ),
              );
              add(const _Fetch());
            },
          );
        } else if (int.tryParse(e.quantity)! == 0) {
          final failureOrSuccess = await repository.removeFromWishlist(
            productId: e.id,
          );
          failureOrSuccess.fold(
              (failure) => emit(
                    state.copyWith(
                      isFetching: false,
                      apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                    ),
                  ), (success) {
            final item = state.selectedItemList.firstWhereOrNull(
              (element) {
                return (element.uid == e.id);
              },
            );

            final list = <WishlistProduct>[...state.selectedItemList];
            list.remove(item);
            emit(
              state.copyWith(
                selectedItemList: list,
              ),
            );
            add(const _Fetch());
          });
        }
      },
      addToWishlist: (e) async {
        emit(
          state.copyWith(
            isFetching: true,
            apiFailureOrSuccessOption: none(),
            showSnackBar: false,
          ),
        );
        final failureOrSuccess = await repository.addToWishlist(
          productId: e.product.productId.getValue(),
          attributeItemId: e.product.attributeItemId
              .getOrDefaultValue(e.product.attributeItemProductId),
          price: e.product.getPriceValue,
          quantity: '1',
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              showSnackBar: true,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (unit) {
            emit(state.copyWith(showSnackBar: true));
            add(const _Fetch());
          },
        );
      },
      addToCart: (e) async {
        emit(
          state.copyWith(
            isFetching: true,
            apiFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await repository.addToCart(
          productId: e.productId,
          price: e.price,
          quantity: e.quantity,
          attributeItemId: e.attributeItemId,
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
                ), (unit) {
          final item = state.selectedItemList.firstWhereOrNull(
            (element) {
              return (element.uid == e.productId);
            },
          );

          final list = <WishlistProduct>[...state.selectedItemList];
          list.remove(item);
          emit(
            state.copyWith(
              selectedItemList: list,
            ),
          );
          add(const _Fetch());
        });
      },
    );
  }
}
