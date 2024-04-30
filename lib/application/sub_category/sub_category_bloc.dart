import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';

part 'sub_category_event.dart';
part 'sub_category_state.dart';
part 'sub_category_bloc.freezed.dart';

class SubCategoryBloc extends Bloc<SubCategoryEvent, SubCategoryState> {
  final IProductRepository repository;

  SubCategoryBloc({
    required this.repository,
  }) : super(SubCategoryState.initial()) {
    on<SubCategoryEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    SubCategoryEvent event,
    Emitter<SubCategoryState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(SubCategoryState.initial()),
      select: (_Select e) async {
        emit(state.copyWith(selectedSubCategory: e.subCategory));
        add(const _FetchProduct());
      },
      fetchProduct: (_) async {
        final failureOrSuccess =
            await repository.getSubCategoryProduct(state.selectedSubCategory);
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (highlightedProduct) => emit(
            state.copyWith(
              products: highlightedProduct,
            ),
          ),
        );
      },
      loadMoreProduct: (_) async {
        final failureOrSuccess = await repository.getHighlightedProduct();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (highlightedProduct) => emit(
            state.copyWith(
              products: highlightedProduct,
            ),
          ),
        );
      },
    );
  }
}
