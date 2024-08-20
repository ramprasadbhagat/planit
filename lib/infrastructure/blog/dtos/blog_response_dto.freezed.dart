// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogResponseDto _$BlogResponseDtoFromJson(Map<String, dynamic> json) {
  return _BlogResponseDto.fromJson(json);
}

/// @nodoc
mixin _$BlogResponseDto {
  @JsonKey(defaultValue: [])
  List<BlogDto> get items => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogResponseDtoCopyWith<BlogResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogResponseDtoCopyWith<$Res> {
  factory $BlogResponseDtoCopyWith(
          BlogResponseDto value, $Res Function(BlogResponseDto) then) =
      _$BlogResponseDtoCopyWithImpl<$Res, BlogResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<BlogDto> items,
      @JsonKey(defaultValue: 0) int totalCount});
}

/// @nodoc
class _$BlogResponseDtoCopyWithImpl<$Res, $Val extends BlogResponseDto>
    implements $BlogResponseDtoCopyWith<$Res> {
  _$BlogResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BlogDto>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogResponseDtoImplCopyWith<$Res>
    implements $BlogResponseDtoCopyWith<$Res> {
  factory _$$BlogResponseDtoImplCopyWith(_$BlogResponseDtoImpl value,
          $Res Function(_$BlogResponseDtoImpl) then) =
      __$$BlogResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<BlogDto> items,
      @JsonKey(defaultValue: 0) int totalCount});
}

/// @nodoc
class __$$BlogResponseDtoImplCopyWithImpl<$Res>
    extends _$BlogResponseDtoCopyWithImpl<$Res, _$BlogResponseDtoImpl>
    implements _$$BlogResponseDtoImplCopyWith<$Res> {
  __$$BlogResponseDtoImplCopyWithImpl(
      _$BlogResponseDtoImpl _value, $Res Function(_$BlogResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
  }) {
    return _then(_$BlogResponseDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BlogDto>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogResponseDtoImpl extends _BlogResponseDto {
  const _$BlogResponseDtoImpl(
      {@JsonKey(defaultValue: []) required final List<BlogDto> items,
      @JsonKey(defaultValue: 0) required this.totalCount})
      : _items = items,
        super._();

  factory _$BlogResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogResponseDtoImplFromJson(json);

  final List<BlogDto> _items;
  @override
  @JsonKey(defaultValue: [])
  List<BlogDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(defaultValue: 0)
  final int totalCount;

  @override
  String toString() {
    return 'BlogResponseDto(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogResponseDtoImplCopyWith<_$BlogResponseDtoImpl> get copyWith =>
      __$$BlogResponseDtoImplCopyWithImpl<_$BlogResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _BlogResponseDto extends BlogResponseDto {
  const factory _BlogResponseDto(
          {@JsonKey(defaultValue: []) required final List<BlogDto> items,
          @JsonKey(defaultValue: 0) required final int totalCount}) =
      _$BlogResponseDtoImpl;
  const _BlogResponseDto._() : super._();

  factory _BlogResponseDto.fromJson(Map<String, dynamic> json) =
      _$BlogResponseDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<BlogDto> get items;
  @override
  @JsonKey(defaultValue: 0)
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$BlogResponseDtoImplCopyWith<_$BlogResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
