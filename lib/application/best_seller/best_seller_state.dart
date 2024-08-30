part of 'best_seller_bloc.dart';

@freezed
class BestSellerState with _$BestSellerState {
  const factory BestSellerState({
    required List<BestSellerProduct> products,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _BestSellerState;

  factory BestSellerState.initial() => const BestSellerState(
        products: [],
        apiFailureOrSuccessOption: None(),
        isFetching: false,
      );
}
