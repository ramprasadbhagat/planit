// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogDtoImpl _$$BlogDtoImplFromJson(Map<String, dynamic> json) =>
    _$BlogDtoImpl(
      id: json['id'] as String? ?? '',
      userId: json['user_id'] as String? ?? '',
      blogTitle: json['blog_title'] as String? ?? '',
      blogContent: json['blog_content'] as String? ?? '',
      blogImages: (json['blog_images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      keyword: (json['keyword'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      blogTag: (blogTagReadValue(json, 'blog_tag') as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      hyperlink: (json['hyperlink'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$BlogDtoImplToJson(_$BlogDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'blog_title': instance.blogTitle,
      'blog_content': instance.blogContent,
      'blog_images': instance.blogImages,
      'keyword': instance.keyword,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'blog_tag': instance.blogTag,
      'hyperlink': instance.hyperlink,
    };
