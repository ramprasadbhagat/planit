import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/highlights/entities/highlight.dart';
import 'package:planit/domain/highlights/repository/i_highlight_repository.dart';

part 'highlight_product_event.dart';
part 'highlight_product_state.dart';
part 'highlight_product_bloc.freezed.dart';

class HighlightProductBloc
    extends Bloc<HighlightProductEvent, HighlightProductState> {
  final IHighlightRepository repository;

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
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getHighlights();
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
                highlights: list,
              ),
            );
          },
        );
      },
    );
  }
}
