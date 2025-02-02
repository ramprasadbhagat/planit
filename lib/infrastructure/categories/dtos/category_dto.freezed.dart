// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  @JsonKey(name: 'categoryName', defaultValue: '')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryImages', defaultValue: [])
  List<String> get categoryImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'subcategories', defaultValue: [])
  List<SubCategoryDto> get subcategories => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', defaultValue: '')
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'categoryName', defaultValue: '') String categoryName,
      @JsonKey(name: 'categoryImages', defaultValue: [])
      List<String> categoryImages,
      @JsonKey(name: 'subcategories', defaultValue: [])
      List<SubCategoryDto> subcategories,
      @JsonKey(name: 'type', defaultValue: '') String type});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? categoryImages = null,
    Object? subcategories = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryImages: null == categoryImages
          ? _value.categoryImages
          : categoryImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryDto>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDtoImplCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$CategoryDtoImplCopyWith(
          _$CategoryDtoImpl value, $Res Function(_$CategoryDtoImpl) then) =
      __$$CategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'categoryName', defaultValue: '') String categoryName,
      @JsonKey(name: 'categoryImages', defaultValue: [])
      List<String> categoryImages,
      @JsonKey(name: 'subcategories', defaultValue: [])
      List<SubCategoryDto> subcategories,
      @JsonKey(name: 'type', defaultValue: '') String type});
}

/// @nodoc
class __$$CategoryDtoImplCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$CategoryDtoImpl>
    implements _$$CategoryDtoImplCopyWith<$Res> {
  __$$CategoryDtoImplCopyWithImpl(
      _$CategoryDtoImpl _value, $Res Function(_$CategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? categoryImages = null,
    Object? subcategories = null,
    Object? type = null,
  }) {
    return _then(_$CategoryDtoImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryImages: null == categoryImages
          ? _value._categoryImages
          : categoryImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryDto>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDtoImpl extends _CategoryDto {
  _$CategoryDtoImpl(
      {@JsonKey(name: 'categoryName', defaultValue: '')
      required this.categoryName,
      @JsonKey(name: 'categoryImages', defaultValue: [])
      required final List<String> categoryImages,
      @JsonKey(name: 'subcategories', defaultValue: [])
      required final List<SubCategoryDto> subcategories,
      @JsonKey(name: 'type', defaultValue: '') required this.type})
      : _categoryImages = categoryImages,
        _subcategories = subcategories,
        super._();

  factory _$CategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDtoImplFromJson(json);

  @override
  @JsonKey(name: 'categoryName', defaultValue: '')
  final String categoryName;
  final List<String> _categoryImages;
  @override
  @JsonKey(name: 'categoryImages', defaultValue: [])
  List<String> get categoryImages {
    if (_categoryImages is EqualUnmodifiableListView) return _categoryImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryImages);
  }

  final List<SubCategoryDto> _subcategories;
  @override
  @JsonKey(name: 'subcategories', defaultValue: [])
  List<SubCategoryDto> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  @override
  @JsonKey(name: 'type', defaultValue: '')
  final String type;

  @override
  String toString() {
    return 'CategoryDto(categoryName: $categoryName, categoryImages: $categoryImages, subcategories: $subcategories, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDtoImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._categoryImages, _categoryImages) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryName,
      const DeepCollectionEquality().hash(_categoryImages),
      const DeepCollectionEquality().hash(_subcategories),
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      __$$CategoryDtoImplCopyWithImpl<_$CategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  factory _CategoryDto(
      {@JsonKey(name: 'categoryName', defaultValue: '')
      required final String categoryName,
      @JsonKey(name: 'categoryImages', defaultValue: [])
      required final List<String> categoryImages,
      @JsonKey(name: 'subcategories', defaultValue: [])
      required final List<SubCategoryDto> subcategories,
      @JsonKey(name: 'type', defaultValue: '')
      required final String type}) = _$CategoryDtoImpl;
  _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$CategoryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'categoryName', defaultValue: '')
  String get categoryName;
  @override
  @JsonKey(name: 'categoryImages', defaultValue: [])
  List<String> get categoryImages;
  @override
  @JsonKey(name: 'subcategories', defaultValue: [])
  List<SubCategoryDto> get subcategories;
  @override
  @JsonKey(name: 'type', defaultValue: '')
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
