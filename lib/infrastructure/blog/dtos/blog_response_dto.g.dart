// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogResponseDtoImpl _$$BlogResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BlogResponseDtoImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => BlogDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$BlogResponseDtoImplToJson(
        _$BlogResponseDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalCount': instance.totalCount,
    };
