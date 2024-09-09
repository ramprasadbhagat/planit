import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/wallet/entities/transaction_history_response.dart';
import 'package:planit/infrastructure/wallet/dtos/transaction_history_dtos.dart';
part 'transaction_history_response_dto.freezed.dart';
part 'transaction_history_response_dto.g.dart';

@freezed
class TransactionHistoryResponseDto with _$TransactionHistoryResponseDto {
  const TransactionHistoryResponseDto._();
  const factory TransactionHistoryResponseDto({
    @JsonKey(defaultValue: <Map<String, dynamic>>[])
    required List<Map<String, dynamic>> items,
    @JsonKey(defaultValue: 0) required int totalCount,
  }) = _TransactionHistoryResponseDto;

  factory TransactionHistoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryResponseDtoFromJson(json);

  TransactionHistoryResponse get toDomain => TransactionHistoryResponse(
        items: items
            .map((e) => TransactionHistoryDto.fromJson(e).toDomain)
            .toList(),
        totalCount: totalCount,
      );
}
