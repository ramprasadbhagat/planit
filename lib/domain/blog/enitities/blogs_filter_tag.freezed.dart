// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blogs_filter_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogsFilterTag {
  String get id => throw _privateConstructorUsedError;
  String get tagName => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String get isCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogsFilterTagCopyWith<BlogsFilterTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsFilterTagCopyWith<$Res> {
  factory $BlogsFilterTagCopyWith(
          BlogsFilterTag value, $Res Function(BlogsFilterTag) then) =
      _$BlogsFilterTagCopyWithImpl<$Res, BlogsFilterTag>;
  @useResult
  $Res call(
      {String id,
      String tagName,
      bool isActive,
      bool isDeleted,
      String isCreated});
}

/// @nodoc
class _$BlogsFilterTagCopyWithImpl<$Res, $Val extends BlogsFilterTag>
    implements $BlogsFilterTagCopyWith<$Res> {
  _$BlogsFilterTagCopyWithImpl(this._value, this._then);

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
abstract class _$$BlogsFilterTagImplCopyWith<$Res>
    implements $BlogsFilterTagCopyWith<$Res> {
  factory _$$BlogsFilterTagImplCopyWith(_$BlogsFilterTagImpl value,
          $Res Function(_$BlogsFilterTagImpl) then) =
      __$$BlogsFilterTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String tagName,
      bool isActive,
      bool isDeleted,
      String isCreated});
}

/// @nodoc
class __$$BlogsFilterTagImplCopyWithImpl<$Res>
    extends _$BlogsFilterTagCopyWithImpl<$Res, _$BlogsFilterTagImpl>
    implements _$$BlogsFilterTagImplCopyWith<$Res> {
  __$$BlogsFilterTagImplCopyWithImpl(
      _$BlogsFilterTagImpl _value, $Res Function(_$BlogsFilterTagImpl) _then)
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
    return _then(_$BlogsFilterTagImpl(
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

class _$BlogsFilterTagImpl implements _BlogsFilterTag {
  const _$BlogsFilterTagImpl(
      {required this.id,
      required this.tagName,
      required this.isActive,
      required this.isDeleted,
      required this.isCreated});

  @override
  final String id;
  @override
  final String tagName;
  @override
  final bool isActive;
  @override
  final bool isDeleted;
  @override
  final String isCreated;

  @override
  String toString() {
    return 'BlogsFilterTag(id: $id, tagName: $tagName, isActive: $isActive, isDeleted: $isDeleted, isCreated: $isCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogsFilterTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, tagName, isActive, isDeleted, isCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogsFilterTagImplCopyWith<_$BlogsFilterTagImpl> get copyWith =>
      __$$BlogsFilterTagImplCopyWithImpl<_$BlogsFilterTagImpl>(
          this, _$identity);
}

abstract class _BlogsFilterTag implements BlogsFilterTag {
  const factory _BlogsFilterTag(
      {required final String id,
      required final String tagName,
      required final bool isActive,
      required final bool isDeleted,
      required final String isCreated}) = _$BlogsFilterTagImpl;

  @override
  String get id;
  @override
  String get tagName;
  @override
  bool get isActive;
  @override
  bool get isDeleted;
  @override
  String get isCreated;
  @override
  @JsonKey(ignore: true)
  _$$BlogsFilterTagImplCopyWith<_$BlogsFilterTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
