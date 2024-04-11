import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item.freezed.dart';

@freezed
class CategoryItem with _$CategoryItem {
  factory CategoryItem({
    required String title,
    required String image,
    required bool editable,
  }) = _CategoryItem;
}
