import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';

part 'search_product_event.dart';
part 'search_product_state.dart';
part 'search_product_bloc.freezed.dart';

class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  final IProductRepository repository;
  SearchProductBloc({required this.repository})
      : super(SearchProductState.initial()) {
    on<SearchProductEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    SearchProductEvent event,
    Emitter<SearchProductState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(SearchProductState.initial()),
      fetchProduct: (e) async {
        if (state.isFetching == false) {
          if (e.isScrolling == false) {
            emit(
              state.copyWith(
                isFetching: true,
              ),
            );
            final failureOrSuccess = await repository.getSearchProduct(
              pageNumber: 1,
              searchKey: e.searchKey,
            );
            await failureOrSuccess.fold((failure) async {
              emit(
                state.copyWith(
                  isFetching: false,
                  apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            }, (products) async {
              final forS = await repository.getSearchProduct(
                pageNumber: state.pageNumber + 1,
                searchKey: e.searchKey,
              );
              var canLoad = false;
              forS.fold(
                (l) => null,
                (r) => canLoad = r.isNotEmpty,
              );
              emit(
                state.copyWith(
                  isFetching: false,
                  pageNumber: 1,
                  products: products,
                  isScrolling: false,
                  canLoadMore: canLoad,
                  apiFailureOrSuccessOption: none(),
                ),
              );
            });
          } else {
            if (state.isScrolling == false) {
              if (state.canLoadMore) {
                emit(state.copyWith(isScrolling: true));
                final failureOrSuccess = await repository.getSearchProduct(
                  pageNumber: state.pageNumber + 1,
                  searchKey: e.searchKey,
                );
                await failureOrSuccess.fold((failure) async {
                  emit(
                    state.copyWith(
                      isScrolling: false,
                      apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                    ),
                  );
                }, (result) async {
                  final forS = await repository.getSearchProduct(
                    pageNumber: state.pageNumber + 2,
                    searchKey: e.searchKey,
                  );
                  var canLoad = false;
                  forS.fold(
                    (l) => null,
                    (r) => canLoad = r.isNotEmpty,
                  );
                  emit(
                    state.copyWith(
                      isFetching: false,
                      pageNumber: state.pageNumber + 1,
                      products: [
                        ...state.products,
                        ...result,
                      ],
                      isScrolling: false,
                      canLoadMore: canLoad,
                      apiFailureOrSuccessOption: none(),
                    ),
                  );
                });
              }
            }
          }
        }
      },
    );
  }
}
