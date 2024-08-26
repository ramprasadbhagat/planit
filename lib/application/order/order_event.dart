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
    required String orderId,
  }) = _ProcessPayment;
  const factory OrderEvent.paymentSuccess({
    required String orderId,
    required String? paymentId,
  }) = _PaymentSuccess;
  const factory OrderEvent.paymentFailed({
    required String orderId,
  }) = _PaymentFailed;
  const factory OrderEvent.handleExternalApp() = _HandleExternalApp;
}
