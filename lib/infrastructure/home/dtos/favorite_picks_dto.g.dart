// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_picks_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoritePicksDtoImpl _$$FavoritePicksDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoritePicksDtoImpl(
      title: json['title'] as String? ?? '',
      image: json['image'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$FavoritePicksDtoImplToJson(
        _$FavoritePicksDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
    };
