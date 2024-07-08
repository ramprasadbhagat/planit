import 'package:freezed_annotation/freezed_annotation.dart';
part 'banner.freezed.dart';

@freezed
class Banner with _$Banner {
  const factory Banner({
    required String id,
    required String option,
    required DateTime startingDate,
    required DateTime endingDate,
    required List<String> bannerImages,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isActive,
    required bool isDeleted,
    required String productId,
  }) = _Banner;

  factory Banner.empty() => _Banner(
        id: '',
        option: '',
        startingDate: DateTime.now(),
        endingDate: DateTime.now(),
        bannerImages: [],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        isActive: false,
        isDeleted: false,
        productId: '',
      );
}
