import 'dart:async';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/order/entities/order_item.dart';
import 'package:planit/domain/review/repository/i_review_repository.dart';

part 'add_review_event.dart';
part 'add_review_state.dart';
part 'add_review_bloc.freezed.dart';

class AddReviewBloc extends Bloc<AddReviewEvent, AddReviewState> {
  final IReviewRepository reviewRepository;
  AddReviewBloc({required this.reviewRepository})
      : super(AddReviewState.initial()) {
    on<AddReviewEvent>(_onEvent);
  }

  Future<FutureOr<void>> _onEvent(
    AddReviewEvent event,
    Emitter<AddReviewState> emit,
  ) async {
    await event.map(
      selectOrder: (e) async {
        emit(
          AddReviewState.initial().copyWith(
            selectedOrder: e.order,
          ),
        );
      },
      selectOrderItem: (selectOrderItem) {
        emit(
          state.copyWith(
            selectedOrderItem: selectOrderItem.orderItem,
          ),
        );
      },
      onRatingChange: (_OnRatingChange value) {
        emit(
          state.copyWith(
            rating: value.rating,
          ),
        );
      },
      onMessageChange: (_OnMessageChange value) {
        emit(
          state.copyWith(
            message: value.message,
          ),
        );
      },
      submitProductReview: (_SubmitProductReview value) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccessOption = await reviewRepository.addProductReview(
          orderId: state.selectedOrder.id.getValue(),
          productId: state.selectedOrderItem.productId.getValue(),
          rating: state.rating,
          message: state.message,
        );

        emit(
          state.copyWith(
            isFetching: false,
            apiFailureOrSuccessOption: optionOf(failureOrSuccessOption),
          ),
        );
      },
      submitOrderReview: (_SubmitOrderReview value) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccessOption = await reviewRepository.addOrderReview(
          orderId: state.selectedOrder.id.getValue(),
          rating: state.rating,
          message: state.message,
        );

        emit(
          state.copyWith(
            isFetching: false,
            apiFailureOrSuccessOption: optionOf(failureOrSuccessOption),
          ),
        );
      },
      clearOnCancel: (_ClearOnCancel value) {
        emit(
          AddReviewState.initial().copyWith(
            selectedOrder: state.selectedOrder,
          ),
        );
      },
    );
  }
}
