import 'dart:async';
import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/track_order/entity/track_order.dart';
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
          ),
        );
        final failureOrSuccess =
            await repository.getTrackOrder(orderId: e.id.getOrCrash());
        failureOrSuccess.fold(
            (failure) => emit(
                  state.copyWith(
                    isFetching: false,
                    trackOrder: TrackOrder.empty(),
                    apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                  ),
                ), (trackOrder) {
          emit(
            state.copyWith(
              isFetching: false,
              trackOrder: trackOrder,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        });
      },
      cancelOrder: (_CancelOrder value) async {
        emit(
          state.copyWith(
            isCancelling: true,
          ),
        );
        final failureOrSuccess = await repository.cancelOrder(
          orderId: state.trackOrder.id.getOrCrash(),
        );

        failureOrSuccess.fold((l) {
          emit(
            state.copyWith(
              isCancelling: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        }, (_) {
          emit(
            state.copyWith(
              isCancelling: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        });
      },
    );
  }
}
