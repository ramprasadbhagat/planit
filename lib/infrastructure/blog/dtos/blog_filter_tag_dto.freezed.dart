// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_filter_tag_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogFilterTagDto _$BlogFilterTagDtoFromJson(Map<String, dynamic> json) {
  return _BlogFilterTagDto.fromJson(json);
}

/// @nodoc
mixin _$BlogFilterTagDto {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tagName', defaultValue: '')
  String get tagName => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'is_active', defaultValue: false, readValue: convertStringToBool)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'is_deleted', defaultValue: false, readValue: convertStringToBool)
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_created', defaultValue: '')
  String get isCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogFilterTagDtoCopyWith<BlogFilterTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogFilterTagDtoCopyWith<$Res> {
  factory $BlogFilterTagDtoCopyWith(
          BlogFilterTagDto value, $Res Function(BlogFilterTagDto) then) =
      _$BlogFilterTagDtoCopyWithImpl<$Res, BlogFilterTagDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'tagName', defaultValue: '') String tagName,
      @JsonKey(
          name: 'is_active',
          defaultValue: false,
          readValue: convertStringToBool)
      bool isActive,
      @JsonKey(
          name: 'is_deleted',
          defaultValue: false,
          readValue: convertStringToBool)
      bool isDeleted,
      @JsonKey(name: 'is_created', defaultValue: '') String isCreated});
}

/// @nodoc
class _$BlogFilterTagDtoCopyWithImpl<$Res, $Val extends BlogFilterTagDto>
    implements $BlogFilterTagDtoCopyWith<$Res> {
  _$BlogFilterTagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tagName = null,
    Object? isActive = null,
    Object? isDeleted = null,
    Object? isCreated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogFilterTagDtoImplCopyWith<$Res>
    implements $BlogFilterTagDtoCopyWith<$Res> {
  factory _$$BlogFilterTagDtoImplCopyWith(_$BlogFilterTagDtoImpl value,
          $Res Function(_$BlogFilterTagDtoImpl) then) =
      __$$BlogFilterTagDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'tagName', defaultValue: '') String tagName,
      @JsonKey(
          name: 'is_active',
          defaultValue: false,
          readValue: convertStringToBool)
      bool isActive,
      @JsonKey(
          name: 'is_deleted',
          defaultValue: false,
          readValue: convertStringToBool)
      bool isDeleted,
      @JsonKey(name: 'is_created', defaultValue: '') String isCreated});
}

/// @nodoc
class __$$BlogFilterTagDtoImplCopyWithImpl<$Res>
    extends _$BlogFilterTagDtoCopyWithImpl<$Res, _$BlogFilterTagDtoImpl>
    implements _$$BlogFilterTagDtoImplCopyWith<$Res> {
  __$$BlogFilterTagDtoImplCopyWithImpl(_$BlogFilterTagDtoImpl _value,
      $Res Function(_$BlogFilterTagDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tagName = null,
    Object? isActive = null,
    Object? isDeleted = null,
    Object? isCreated = null,
  }) {
    return _then(_$BlogFilterTagDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogFilterTagDtoImpl extends _BlogFilterTagDto {
  const _$BlogFilterTagDtoImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'tagName', defaultValue: '') required this.tagName,
      @JsonKey(
          name: 'is_active',
          defaultValue: false,
          readValue: convertStringToBool)
      required this.isActive,
      @JsonKey(
          name: 'is_deleted',
          defaultValue: false,
          readValue: convertStringToBool)
      required this.isDeleted,
      @JsonKey(name: 'is_created', defaultValue: '') required this.isCreated})
      : super._();

  factory _$BlogFilterTagDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogFilterTagDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'tagName', defaultValue: '')
  final String tagName;
  @override
  @JsonKey(
      name: 'is_active', defaultValue: false, readValue: convertStringToBool)
  final bool isActive;
  @override
  @JsonKey(
      name: 'is_deleted', defaultValue: false, readValue: convertStringToBool)
  final bool isDeleted;
  @override
  @JsonKey(name: 'is_created', defaultValue: '')
  final String isCreated;

  @override
  String toString() {
    return 'BlogFilterTagDto(id: $id, tagName: $tagName, isActive: $isActive, isDeleted: $isDeleted, isCreated: $isCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogFilterTagDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, tagName, isActive, isDeleted, isCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogFilterTagDtoImplCopyWith<_$BlogFilterTagDtoImpl> get copyWith =>
      __$$BlogFilterTagDtoImplCopyWithImpl<_$BlogFilterTagDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogFilterTagDtoImplToJson(
      this,
    );
  }
}

abstract class _BlogFilterTagDto extends BlogFilterTagDto {
  const factory _BlogFilterTagDto(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'tagName', defaultValue: '') required final String tagName,
      @JsonKey(
          name: 'is_active',
          defaultValue: false,
          readValue: convertStringToBool)
      required final bool isActive,
      @JsonKey(
          name: 'is_deleted',
          defaultValue: false,
          readValue: convertStringToBool)
      required final bool isDeleted,
      @JsonKey(name: 'is_created', defaultValue: '')
      required final String isCreated}) = _$BlogFilterTagDtoImpl;
  const _BlogFilterTagDto._() : super._();

  factory _BlogFilterTagDto.fromJson(Map<String, dynamic> json) =
      _$BlogFilterTagDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'tagName', defaultValue: '')
  String get tagName;
  @override
  @JsonKey(
      name: 'is_active', defaultValue: false, readValue: convertStringToBool)
  bool get isActive;
  @override
  @JsonKey(
      name: 'is_deleted', defaultValue: false, readValue: convertStringToBool)
  bool get isDeleted;
  @override
  @JsonKey(name: 'is_created', defaultValue: '')
  String get isCreated;
  @override
  @JsonKey(ignore: true)
  _$$BlogFilterTagDtoImplCopyWith<_$BlogFilterTagDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
