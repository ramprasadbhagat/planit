// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerDtoImpl _$$BannerDtoImplFromJson(Map<String, dynamic> json) =>
    _$BannerDtoImpl(
      id: json['id'] as String? ?? '',
      option: json['option'] as String? ?? '',
      startingDate: json['startingDate'] as String? ?? '',
      endingDate: json['endingDate'] as String? ?? '',
      bannerImages: (json['banner_images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? false,
      isDeleted: json['is_deleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$BannerDtoImplToJson(_$BannerDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option': instance.option,
      'startingDate': instance.startingDate,
      'endingDate': instance.endingDate,
      'banner_images': instance.bannerImages,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_active': instance.isActive,
      'is_deleted': instance.isDeleted,
    };
