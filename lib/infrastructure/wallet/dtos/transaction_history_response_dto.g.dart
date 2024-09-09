// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryResponseDtoImpl
    _$$TransactionHistoryResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$TransactionHistoryResponseDtoImpl(
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) => e as Map<String, dynamic>)
                  .toList() ??
              [],
          totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$TransactionHistoryResponseDtoImplToJson(
        _$TransactionHistoryResponseDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalCount': instance.totalCount,
    };
