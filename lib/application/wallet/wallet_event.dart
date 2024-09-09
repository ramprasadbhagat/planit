part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.fetchBalance() = _FetchBalance;
  const factory WalletEvent.fetchTransactionHistory() =
      _FetchTransactionHistory;

  const factory WalletEvent.fetchMoreTransactionEvent() = _FetchMoreEvent;
}
