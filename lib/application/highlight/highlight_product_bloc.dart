import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';

part 'highlight_product_event.dart';
part 'highlight_product_state.dart';
part 'highlight_product_bloc.freezed.dart';

class HighlightProductBloc
    extends Bloc<HighlightProductEvent, HighlightProductState> {
  final IProductRepository repository;

  HighlightProductBloc({
    required this.repository,
  }) : super(HighlightProductState.initial()) {
    on<HighlightProductEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    HighlightProductEvent event,
    Emitter<HighlightProductState> emit,
  ) async {
    await event.map(
      initialized: (e) async => emit(HighlightProductState.initial()),
      fetch: (e) async {
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
