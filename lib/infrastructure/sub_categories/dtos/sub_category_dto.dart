import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';

part 'sub_category_dto.freezed.dart';
part 'sub_category_dto.g.dart';

@freezed
class SubCategoryDto with _$SubCategoryDto {
  const SubCategoryDto._();
  factory SubCategoryDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(name: 'categoryName', defaultValue: '')
    required String categoryName,
    @JsonKey(name: 'categoryDescription', defaultValue: '')
    required String categoryDescription,
    @JsonKey(name: 'categoryImages', defaultValue: [])
    required List<String> categoryImages,
  }) = _SubCategoryDto;

  factory SubCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryDtoFromJson(json);

  SubCategory get toDomain => SubCategory(
        id: StringValue(id),
        image: categoryImages,
        name: StringValue(categoryName),
        description: StringValue(categoryDescription),
      );
}
