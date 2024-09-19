// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryTimeDtoImpl _$$DeliveryTimeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryTimeDtoImpl(
      date: json['date'] as String? ?? '',
      startTime: json['startTime'] as String? ?? '',
      endTime: json['endTime'] as String? ?? '',
    );

Map<String, dynamic> _$$DeliveryTimeDtoImplToJson(
        _$DeliveryTimeDtoImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
