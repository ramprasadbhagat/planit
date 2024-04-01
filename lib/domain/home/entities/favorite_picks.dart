import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_picks.freezed.dart';

@freezed
class FavoritePicks with _$FavoritePicks {
  factory FavoritePicks({
    required String title,
    required String image,
    required double price,
  }) = _FavoritePicks;
}
