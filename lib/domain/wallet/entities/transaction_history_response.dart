import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/wallet/entities/transaction_history.dart';
part 'transaction_history_response.freezed.dart';

@freezed
class TransactionHistoryResponse with _$TransactionHistoryResponse {
  const factory TransactionHistoryResponse({
    required List<TransactionHistory> items,
    required int totalCount,
  }) = _TransactionHistoryResponse;
}
