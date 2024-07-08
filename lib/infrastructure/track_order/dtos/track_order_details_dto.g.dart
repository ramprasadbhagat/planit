// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_order_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackOrderDetailsDtoImpl _$$TrackOrderDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackOrderDetailsDtoImpl(
      id: json['id'] as String? ?? '',
      orderId: json['order_id'] as String? ?? '',
      orderStatus: json['order_status'] as String? ?? '',
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$TrackOrderDetailsDtoImplToJson(
        _$TrackOrderDetailsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'order_status': instance.orderStatus,
      'date': instance.date,
    };
