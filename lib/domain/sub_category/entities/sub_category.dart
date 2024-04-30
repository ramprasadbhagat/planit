import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'sub_category.freezed.dart';

@freezed
class SubCategory with _$SubCategory {
  const SubCategory._();
  factory SubCategory({
    required StringValue name,
    required List<String> image,
  }) = _SubCategory;

  factory SubCategory.empty() => SubCategory(
        name: StringValue(''),
        image: [],
      );
}
