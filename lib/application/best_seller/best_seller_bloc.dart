import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/best_seller/entities/best_seller_product.dart';
import 'package:planit/domain/best_seller/repository/best_seller_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';

part 'best_seller_event.dart';
part 'best_seller_state.dart';
part 'best_seller_bloc.freezed.dart';

class BestSellerBloc extends Bloc<BestSellerEvent, BestSellerState> {
  final IBestSellerRepository _repository;
  BestSellerBloc(this._repository) : super(BestSellerState.initial()) {
    on<BestSellerEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    BestSellerEvent event,
    Emitter<BestSellerState> emit,
  ) async {
    await event.map(
      fetchProducts: (value) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccess = await _repository.fetchBestSellerProducts();

        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isFetching: false,
                products: r,
              ),
            );
          },
        );
      },
    );
  }
}
