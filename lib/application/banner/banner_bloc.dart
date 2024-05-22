import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/banner/entities/banner.dart';
import 'package:planit/domain/banner/repository/i_banner_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';

part 'banner_event.dart';
part 'banner_state.dart';
part 'banner_bloc.freezed.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final IBannerRepository repository;

  BannerBloc({
    required this.repository,
  }) : super(BannerState.initial()) {
    on<BannerEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    BannerEvent event,
    Emitter<BannerState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(BannerState.initial()),
      fetch: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getBanner();
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
                banner: list,
              ),
            );
          },
        );
      },
    );
  }
}
