// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryDtoImpl _$$TransactionHistoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryDtoImpl(
      id: json['_id'] as String? ?? '',
      transactionId: json['transaction_id'] as String? ?? '',
      amount: (amountReadValue(json, 'amount') as num?)?.toDouble() ?? 0,
      status: $enumDecodeNullable(_$TransactionTypeEnumMap, json['status']) ??
          TransactionType.CR,
      date: json['date'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$TransactionHistoryDtoImplToJson(
        _$TransactionHistoryDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'status': _$TransactionTypeEnumMap[instance.status]!,
      'date': instance.date,
      'description': instance.description,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.CR: 'CR',
  TransactionType.DR: 'DR',
};
