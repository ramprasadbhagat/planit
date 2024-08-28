part of 'add_money_bloc.dart';

@freezed
class AddMoneyState with _$AddMoneyState {
  const factory AddMoneyState({
    required PaymentMethod selectedPaymentMethod,
    required int amount,
    required bool isLoading,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _AddMoneyState;

  factory AddMoneyState.initial() => const AddMoneyState(
        selectedPaymentMethod: PaymentMethod.razorpay(),
        amount: 0,
        isLoading: false,
        apiFailureOrSuccessOption: None(),
      );
}
