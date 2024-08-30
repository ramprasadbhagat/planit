import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/wallet/entities/transaction_history.dart';
part 'transaction_history_dtos.freezed.dart';
part 'transaction_history_dtos.g.dart';

@freezed
class TransactionHistoryDto with _$TransactionHistoryDto {
  const TransactionHistoryDto._();

  const factory TransactionHistoryDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(name: 'transaction_id', defaultValue: '')
    required String transactionId,
    @JsonKey(defaultValue: 0, readValue: amountReadValue)
    required double amount,
    @JsonKey(defaultValue: TransactionType.CR) required TransactionType status,
    @JsonKey(defaultValue: '') required String date,
    @JsonKey(defaultValue: '') required String description,
  }) = _TransactionHistoryDto;

  factory TransactionHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryDtoFromJson(json);

  TransactionHistory get toDomain => TransactionHistory(
        id: StringValue(id),
        amount: amount,
        transactionId: StringValue(transactionId),
        type: status,
        date: DateTime.tryParse(date) ?? DateTime(1000),
        description: StringValue(description),
      );
}

double amountReadValue(Map json, String key) {
  if (json[key] is String) {
    return double.tryParse(json[key]) ?? 0.0;
  }

  if (json[key] is int) {
    return (json[key] as int).toDouble();
  }

  if (json[key] is double) {
    return json[key];
  }
  return 0;
}
