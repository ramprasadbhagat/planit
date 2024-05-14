part of 'quick_picks_bloc.dart';

@freezed
class QuickPicksState with _$QuickPicksState {
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
}
