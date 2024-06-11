// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubCategoryDto _$SubCategoryDtoFromJson(Map<String, dynamic> json) {
  return _SubCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryDto {
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryName', defaultValue: '')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryDescription', defaultValue: '')
  String get categoryDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryImages', defaultValue: [])
  List<String> get categoryImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryDtoCopyWith<SubCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryDtoCopyWith<$Res> {
  factory $SubCategoryDtoCopyWith(
          SubCategoryDto value, $Res Function(SubCategoryDto) then) =
      _$SubCategoryDtoCopyWithImpl<$Res, SubCategoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'categoryName', defaultValue: '') String categoryName,
      @JsonKey(name: 'categoryDescription', defaultValue: '')
      String categoryDescription,
      @JsonKey(name: 'categoryImages', defaultValue: [])
      List<String> categoryImages});
}

/// @nodoc
class _$SubCategoryDtoCopyWithImpl<$Res, $Val extends SubCategoryDto>
    implements $SubCategoryDtoCopyWith<$Res> {
  _$SubCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? categoryDescription = null,
    Object? categoryImages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDescription: null == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
      categoryImages: null == categoryImages
          ? _value.categoryImages
          : categoryImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryDtoImplCopyWith<$Res>
    implements $SubCategoryDtoCopyWith<$Res> {
  factory _$$SubCategoryDtoImplCopyWith(_$SubCategoryDtoImpl value,
          $Res Function(_$SubCategoryDtoImpl) then) =
      __$$SubCategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'categoryName', defaultValue: '') String categoryName,
      @JsonKey(name: 'categoryDescription', defaultValue: '')
      String categoryDescription,
      @JsonKey(name: 'categoryImages', defaultValue: [])
      List<String> categoryImages});
}

/// @nodoc
class __$$SubCategoryDtoImplCopyWithImpl<$Res>
    extends _$SubCategoryDtoCopyWithImpl<$Res, _$SubCategoryDtoImpl>
    implements _$$SubCategoryDtoImplCopyWith<$Res> {
  __$$SubCategoryDtoImplCopyWithImpl(
      _$SubCategoryDtoImpl _value, $Res Function(_$SubCategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? categoryDescription = null,
    Object? categoryImages = null,
  }) {
    return _then(_$SubCategoryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDescription: null == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
      categoryImages: null == categoryImages
          ? _value._categoryImages
          : categoryImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryDtoImpl extends _SubCategoryDto {
  _$SubCategoryDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'categoryName', defaultValue: '')
      required this.categoryName,
      @JsonKey(name: 'categoryDescription', defaultValue: '')
      required this.categoryDescription,
      @JsonKey(name: 'categoryImages', defaultValue: [])
      required final List<String> categoryImages})
      : _categoryImages = categoryImages,
        super._();

  factory _$SubCategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'categoryName', defaultValue: '')
  final String categoryName;
  @override
  @JsonKey(name: 'categoryDescription', defaultValue: '')
  final String categoryDescription;
  final List<String> _categoryImages;
  @override
  @JsonKey(name: 'categoryImages', defaultValue: [])
  List<String> get categoryImages {
    if (_categoryImages is EqualUnmodifiableListView) return _categoryImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryImages);
  }

  @override
  String toString() {
    return 'SubCategoryDto(id: $id, categoryName: $categoryName, categoryDescription: $categoryDescription, categoryImages: $categoryImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryDescription, categoryDescription) ||
                other.categoryDescription == categoryDescription) &&
            const DeepCollectionEquality()
                .equals(other._categoryImages, _categoryImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryName,
      categoryDescription,
      const DeepCollectionEquality().hash(_categoryImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryDtoImplCopyWith<_$SubCategoryDtoImpl> get copyWith =>
      __$$SubCategoryDtoImplCopyWithImpl<_$SubCategoryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _SubCategoryDto extends SubCategoryDto {
  factory _SubCategoryDto(
      {@JsonKey(name: '_id', defaultValue: '') required final String id,
      @JsonKey(name: 'categoryName', defaultValue: '')
      required final String categoryName,
      @JsonKey(name: 'categoryDescription', defaultValue: '')
      required final String categoryDescription,
      @JsonKey(name: 'categoryImages', defaultValue: [])
      required final List<String> categoryImages}) = _$SubCategoryDtoImpl;
  _SubCategoryDto._() : super._();

  factory _SubCategoryDto.fromJson(Map<String, dynamic> json) =
      _$SubCategoryDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'categoryName', defaultValue: '')
  String get categoryName;
  @override
  @JsonKey(name: 'categoryDescription', defaultValue: '')
  String get categoryDescription;
  @override
  @JsonKey(name: 'categoryImages', defaultValue: [])
  List<String> get categoryImages;
  @override
  @JsonKey(ignore: true)
  _$$SubCategoryDtoImplCopyWith<_$SubCategoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
