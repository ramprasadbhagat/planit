import 'dart:async';
import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';
import 'package:planit/domain/track_order/repository/i_track_order_repository.dart';

part 'track_order_event.dart';
part 'track_order_state.dart';
part 'track_order_bloc.freezed.dart';

class TrackOrderBloc extends Bloc<TrackOrderEvent, TrackOrderState> {
  final ITrackOrderRepository repository;
  TrackOrderBloc({required this.repository})
      : super(TrackOrderState.initial()) {
    on<TrackOrderEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    TrackOrderEvent event,
    Emitter<TrackOrderState> emit,
  ) async {
    await event.map(
      started: (_) async => emit(TrackOrderState.initial()),
      getTrackOrderDetails: (e) async {
        emit(
          TrackOrderState.initial().copyWith(
            isFetching: true,
            order: e.order,
          ),
        );
        final failureOrSuccess =
            await repository.getTrackOrder(orderId: e.order.id.getOrCrash());
        failureOrSuccess.fold(
            (failure) => emit(
                  state.copyWith(
                    isFetching: false,
                    trackOrderItem: TrackOrderDetails.empty(),
                    apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                  ),
                ), (success) {
          emit(
            state.copyWith(
              order: e.order,
              isFetching: false,
              trackOrderItem: success,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        });
      },
      cancelOrder: (_CancelOrder value) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccess =
            await repository.cancelOrder(orderId: state.order.id.getOrCrash());

        failureOrSuccess.fold((l) {
          emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        }, (r) {
          emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              order: r,
            ),
          );
        });
      },
    );
  }
}
