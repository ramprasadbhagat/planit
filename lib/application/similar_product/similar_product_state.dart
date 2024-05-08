part of 'similar_product_bloc.dart';

@freezed
class SimilarProductState with _$SimilarProductState {
  const factory SimilarProductState({
    required List<SimilarProduct> similarProductList,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _SimilarProductState;

  factory SimilarProductState.initial() => SimilarProductState(
        similarProductList: [],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );
}
