import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/domain/sub_category/repository/i_sub_category_repository.dart';

part 'sub_category_event.dart';
part 'sub_category_state.dart';
part 'sub_category_bloc.freezed.dart';

class SubCategoryBloc extends Bloc<SubCategoryEvent, SubCategoryState> {
  final IProductRepository repository;
  final ISubCategoryRepository subCategoryRepository;

  SubCategoryBloc({
    required this.repository,
    required this.subCategoryRepository,
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
      getShopByCategory: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess =
            await subCategoryRepository.getShopByCategory();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (sub) => emit(
            state.copyWith(
              shopByCategoryList: sub,
              isFetching: false,
            ),
          ),
        );
      },
      getShopByOcassion: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess =
            await subCategoryRepository.getShopByOcassion();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (sub) => emit(
            state.copyWith(
              shopByOcassionList: sub,
              isFetching: false,
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
