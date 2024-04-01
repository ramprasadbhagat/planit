import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/home/entities/favorite_picks.dart';

part 'favorite_picks_dto.freezed.dart';
part 'favorite_picks_dto.g.dart';

@freezed
class FavoritePicksDto with _$FavoritePicksDto {
  const FavoritePicksDto._();

  factory FavoritePicksDto({
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'price', defaultValue: 0) required double price,
  }) = _FavoritePicksDto;

  factory FavoritePicksDto.fromJson(Map<String, dynamic> json) =>
      _$FavoritePicksDtoFromJson(json);

  FavoritePicks get toDomain =>
      FavoritePicks(title: title, image: image, price: price);
}
