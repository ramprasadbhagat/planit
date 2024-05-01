import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const Category._();
  factory Category({
    required StringValue name,
    required List<String> image,
    required List<SubCategory> subCategory,
  }) = _Category;

  factory Category.empty() => Category(
        name: StringValue(''),
        image: [],
        subCategory: <SubCategory>[],
      );

  bool get isValid =>
      name.isValid() && image.isNotEmpty && subCategory.isNotEmpty;
}
