import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/banner/entities/banner.dart';
import 'package:intl/intl.dart';

part 'banner_dto.freezed.dart';
part 'banner_dto.g.dart';

@freezed
class BannerDto with _$BannerDto {
  const BannerDto._();

  const factory BannerDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'option', defaultValue: '') required String option,
    @JsonKey(name: 'startingDate', defaultValue: '')
    required String startingDate,
    @JsonKey(name: 'endingDate', defaultValue: '') required String endingDate,
    @JsonKey(name: 'banner_images', defaultValue: [])
    required List<String> bannerImages,
    @JsonKey(name: 'created_at', defaultValue: '') required String createdAt,
    @JsonKey(name: 'updated_at', defaultValue: '') required String updatedAt,
    @JsonKey(name: 'is_active', defaultValue: false) required bool isActive,
    @JsonKey(name: 'is_deleted', defaultValue: false) required bool isDeleted,
  }) = _BannerDto;

  factory BannerDto.fromJson(Map<String, dynamic> json) =>
      _$BannerDtoFromJson(json);

  Banner get toDomain => Banner(
        id: id,
        option: option,
        startingDate:
            DateFormat('EEE MMM dd yyyy HH:mm:ss').tryParse(startingDate) ??
                DateTime.now(),
        endingDate:
            DateFormat('EEE MMM dd yyyy HH:mm:ss').tryParse(endingDate) ??
                DateTime.now(),
        bannerImages: bannerImages,
        createdAt: DateTime.tryParse(createdAt) ?? DateTime.now(),
        updatedAt: DateTime.tryParse(updatedAt) ?? DateTime.now(),
        isActive: isActive,
        isDeleted: isDeleted,
      );
}
