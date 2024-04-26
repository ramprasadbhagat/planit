import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const Category._();
  factory Category({
    required StringValue name,
    required List<String> image,
  }) = _Category;

  factory Category.empty() => Category(name: StringValue(''), image: []);
}
