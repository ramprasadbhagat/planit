// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackOrderDtoImpl _$$TrackOrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$TrackOrderDtoImpl(
      trackOrderItems: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  TrackOrderDetailsDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TrackOrderDtoImplToJson(_$TrackOrderDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.trackOrderItems,
      'totalCount': instance.totalCount,
    };
