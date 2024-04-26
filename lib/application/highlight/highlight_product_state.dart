part of 'highlight_product_bloc.dart';

@freezed
class HighlightProductState with _$HighlightProductState {
  const factory HighlightProductState({
    required List<Product> products,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _HighlightProductState;

  factory HighlightProductState.initial() => HighlightProductState(
        products: <Product>[],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );
}
