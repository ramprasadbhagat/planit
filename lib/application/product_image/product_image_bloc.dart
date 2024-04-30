import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product_image.dart';
import 'package:planit/domain/product/repository/i_product_repository.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'product_image_event.dart';
part 'product_image_state.dart';
part 'product_image_bloc.freezed.dart';

class ProductImageBloc extends Bloc<ProductImageEvent, ProductImageState> {
  final IProductRepository repository;
  ProductImageBloc({
    required this.repository,
  }) : super(ProductImageState.initial()) {
    on<ProductImageEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    ProductImageEvent event,
    Emitter<ProductImageState> emit,
  ) {
    event.map(
      initialized: (_) => emit(ProductImageState.initial()),
      fetch: (_Fetch e) {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
      },
    );
  }
}
