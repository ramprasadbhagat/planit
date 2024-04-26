import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/domain/core/value/value_objects.dart';

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
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  Category get toDomain => Category(
        name: StringValue(categoryName),
        image: categoryImages,
      );
}
