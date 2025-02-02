part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    required int balance,
    required bool isLoading,
    required bool isTransactionLoading,
    required List<TransactionHistory> transactions,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool hasMore,
    required int transactionPageNumber,
  }) = _WalletState;

  factory WalletState.initial() => const WalletState(
        balance: 0,
        isLoading: false,
        apiFailureOrSuccessOption: None(),
        isTransactionLoading: false,
        transactions: [],
        hasMore: true,
        transactionPageNumber: 1,
      );
}
