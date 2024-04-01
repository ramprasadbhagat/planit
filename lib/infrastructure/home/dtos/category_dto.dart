import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/home/entities/category.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();

  factory CategoryDto({
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'image', defaultValue: '') required String image,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  Category get toDomain => Category(title: title, image: image);
}
