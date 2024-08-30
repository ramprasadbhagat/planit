import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'transaction_history.freezed.dart';

@freezed
class TransactionHistory with _$TransactionHistory {
  const factory TransactionHistory({
    required StringValue id,
    required double amount,
    required StringValue transactionId,
    required StringValue description,
    required TransactionType type,
    required DateTime date,
  }) = _TransactionHistory;
}

enum TransactionType {
  CR('Credited'),
  DR('Debited');

  final String label;
  const TransactionType(this.label);
}
