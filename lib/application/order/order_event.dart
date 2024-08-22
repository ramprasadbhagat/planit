part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.initialized() = _Initialized;
  const factory OrderEvent.submitOrder({
    required CartItem cartItem,
    required AddressBook addressBook,
    required String date,
    required Coupon coupon,
    required double deliveryCharge,
    required bool isCOD,
  }) = _SubmitOrder;

  const factory OrderEvent.fetchOrders() = _FetchOrders;
  const factory OrderEvent.processPayment({
    required double totalAmount,
    required String phone,
  }) = _ProcessPayment;
  const factory OrderEvent.paymentSuccess() = _PaymentSuccess;
  const factory OrderEvent.paymentFailed() = _PaymentFailed;
  const factory OrderEvent.handleExternalApp() = _HandleExternalApp;
}
