part of 'quick_picks_bloc.dart';

@freezed
class QuickPicksState with _$QuickPicksState {
  const factory QuickPicksState({
    required List<Product> products,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _QuickPicksState;

  factory QuickPicksState.initial() => QuickPicksState(
        products: <Product>[],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );
}
