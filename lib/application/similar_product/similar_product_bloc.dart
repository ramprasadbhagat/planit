import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/domain/similar_product/entities/similar_product.dart';
import 'package:planit/domain/similar_product/repository/i_similar_product_repository.dart';

part 'similar_product_event.dart';
part 'similar_product_state.dart';
part 'similar_product_bloc.freezed.dart';

class SimilarProductBloc
    extends Bloc<SimilarProductEvent, SimilarProductState> {
  final ISimilarProductRepository repository;
  SimilarProductBloc({required this.repository})
      : super(SimilarProductState.initial()) {
    on<SimilarProductEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    SimilarProductEvent event,
    Emitter<SimilarProductState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(SimilarProductState.initial()),
      fetch: (_Fetch e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getSimilarProductList(
          productId: e.productId.getValue(),
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isFetching: false,
            ),
          ),
          (list) {
            emit(
              state.copyWith(
                isFetching: false,
                similarProductList: list,
              ),
            );
          },
        );
      },
    );
  }
}
