// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_comments_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogCommentsDtoImpl _$$BlogCommentsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BlogCommentsDtoImpl(
      id: json['id'] as String? ?? '',
      comment: json['comment'] as String? ?? '',
      commentDate: DateTime.parse(json['comment_date'] as String),
      userName: json['userName'] as String? ?? '',
    );

Map<String, dynamic> _$$BlogCommentsDtoImplToJson(
        _$BlogCommentsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'comment_date': instance.commentDate.toIso8601String(),
      'userName': instance.userName,
    };
