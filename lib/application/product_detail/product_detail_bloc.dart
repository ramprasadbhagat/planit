import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/utils/svg_image.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  final IProductRepository repository;
  ProductDetailBloc({
    required this.repository,
  }) : super(ProductDetailState.initial()) {
    on<ProductDetailEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    ProductDetailEvent event,
    Emitter<ProductDetailState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(ProductDetailState.initial()),
      fetch: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getProductDetail(
          e.productId,
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
                product: res,
                selectedInventory: e.attributeItemId != null
                    ? res.inventoryList.firstWhere(
                        (element) =>
                            element.attributeItemId == e.attributeItemId,
                        orElse: () =>
                            res.inventoryList.firstOrNull ?? Inventory.empty(),
                      )
                    : res.inventoryList.firstOrNull ?? Inventory.empty(),
                isFetching: false,
              ),
            );
          },
        );
      },
      changeSelectedAttribute: (_ChangeSelectedAttribute value) {
        emit(
          state.copyWith(
            selectedInventory: value.inventory,
          ),
        );
      },
    );
  }
}
