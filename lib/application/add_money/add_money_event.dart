part of 'add_money_bloc.dart';

@freezed
class AddMoneyEvent with _$AddMoneyEvent {
  const factory AddMoneyEvent.init() = _Init;

  const factory AddMoneyEvent.changePaymentMethod(PaymentMethod paymentMethod) =
      _PaymentMethod;
  const factory AddMoneyEvent.changeAmount(String amount) = _ChangeAmount;
  const factory AddMoneyEvent.addMoneyClicked() = _AddMoneyClicked;
  const factory AddMoneyEvent.handlePaymentSuccess(
    int amount,
    String transactionId,
  ) = _HandlePaymentSuccess;
  const factory AddMoneyEvent.handlePaymentFailed({
    required int amount,
    required String message,
  }) = _HandlePaymentFailed;
}
