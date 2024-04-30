import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/infrastructure/sub_categories/sub_category_dto.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();
  factory CategoryDto({
    @JsonKey(name: 'categoryName', defaultValue: '')
    required String categoryName,
    @JsonKey(name: 'categoryImages', defaultValue: [])
    required List<String> categoryImages,
    @JsonKey(name: 'subcategories', defaultValue: [])
    required List<SubCategoryDto> subcategories,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  Category get toDomain => Category(
        name: StringValue(categoryName),
        image: categoryImages,
        subCategory: subcategories.map((e) => e.toDomain).toList(),
      );
}
