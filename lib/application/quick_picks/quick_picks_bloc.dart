import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/quick_picks/entities/quick_picks.dart';
import 'package:planit/domain/quick_picks/repository/i_quick_pick_repository.dart';

part 'quick_picks_event.dart';
part 'quick_picks_state.dart';
part 'quick_picks_bloc.freezed.dart';

class QuickPicksBloc extends Bloc<QuickPicksEvent, QuickPicksState> {
  final IQuickPicksRepository repository;

  QuickPicksBloc({
    required this.repository,
  }) : super(QuickPicksState.initial()) {
    on<QuickPicksEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    QuickPicksEvent event,
    Emitter<QuickPicksState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(QuickPicksState.initial()),
      fetch: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getQuickPicks();
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
                quicksPickProducts: list,
              ),
            );
          },
        );
      },
    );
  }
}
