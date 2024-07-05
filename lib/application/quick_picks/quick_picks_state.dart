part of 'quick_picks_bloc.dart';

@freezed
class QuickPicksState with _$QuickPicksState {
  const QuickPicksState._();
  const factory QuickPicksState({
    required List<QuickPicks> quicksPickProducts,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _QuickPicksState;

  factory QuickPicksState.initial() => QuickPicksState(
        quicksPickProducts: <QuickPicks>[],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );

// calculate height based on product quantity
  double get quickPickProductsHeight {
    final rows = (quicksPickProducts.length + 2) ~/ 3;
    return ((rows > 0 ? rows : 1) * 180) + 35;
  }
}
