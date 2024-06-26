part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const OrderState._();
  const factory OrderState({
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool isFetchingOrders,
    required List<Order> orders,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        isFetchingOrders: false,
        orders: [],
      );
}
