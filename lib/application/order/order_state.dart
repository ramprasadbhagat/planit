part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const OrderState._();
  const factory OrderState({
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
        apiFailureOrSuccessOption: none(),
        isFetching: false,
      );
}
