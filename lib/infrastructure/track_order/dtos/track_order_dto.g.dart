// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackOrderDtoImpl _$$TrackOrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$TrackOrderDtoImpl(
      orderId: json['order_id'] as String? ?? '',
      trackOrderStatusList: (json['all_status'] as List<dynamic>?)
              ?.map((e) =>
                  TrackOrderDetailsDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      orderStatus: json['order_status'] as String? ?? '',
    );

Map<String, dynamic> _$$TrackOrderDtoImplToJson(_$TrackOrderDtoImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'all_status': instance.trackOrderStatusList,
      'order_status': instance.orderStatus,
    };
