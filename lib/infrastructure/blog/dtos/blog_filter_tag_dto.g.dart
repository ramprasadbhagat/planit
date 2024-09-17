// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_filter_tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogFilterTagDtoImpl _$$BlogFilterTagDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BlogFilterTagDtoImpl(
      id: json['id'] as String? ?? '',
      tagName: json['tagName'] as String? ?? '',
      isActive: convertStringToBool(json, 'is_active') as bool? ?? false,
      isDeleted: convertStringToBool(json, 'is_deleted') as bool? ?? false,
      isCreated: json['is_created'] as String? ?? '',
    );

Map<String, dynamic> _$$BlogFilterTagDtoImplToJson(
        _$BlogFilterTagDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tagName': instance.tagName,
      'is_active': instance.isActive,
      'is_deleted': instance.isDeleted,
      'is_created': instance.isCreated,
    };
