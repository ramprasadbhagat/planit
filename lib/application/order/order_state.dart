part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const OrderState._();
  const factory OrderState({
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool isFetchingOrders,
    required bool isFetchingDeliveryDate,
    required List<Order> orders,
    required PaymentMethod selectedPaymentMethod,
    required DeliveryTime deliveryTime,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        isFetchingOrders: false,
        isFetchingDeliveryDate: false,
        orders: [],
        selectedPaymentMethod: const PaymentMethod.razorpay(),
        deliveryTime: DeliveryTime.empty(),
      );
  List<String> get getOrderIdList {
    return orders.map((e) {
      return e.id.getValue();
    }).toList();
  }
}
