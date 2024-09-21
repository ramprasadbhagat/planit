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
    required CurrentUser currentUser,
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
    required String paymentType,
  }) = _PaymentSuccess;
  const factory OrderEvent.paymentFailed({
    required String orderId,
    required String paymentType,
  }) = _PaymentFailed;
  const factory OrderEvent.handleExternalApp() = _HandleExternalApp;
  const factory OrderEvent.changePaymentMethod(PaymentMethod paymentMethod) =
      _ChangePaymentMethod;
  const factory OrderEvent.checkDeliveryDate({
    @Default(false) bool isDeliveryDateSelectedByUser,
    @Default('') String selectedDate,
  }) = _CheckDeliveryDate;
}
