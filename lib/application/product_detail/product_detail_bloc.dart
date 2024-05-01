import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';
import 'package:planit/domain/product/value/value_objects.dart';

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
        final failureOrSuccess = await repository.getProductDetail(
          e.productId,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (res) {
            emit(
              state.copyWith(
                productDetail: res,
              ),
            );
          },
        );
      },
    );
  }
}
