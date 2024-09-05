// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeResponseDto _$RecipeResponseDtoFromJson(Map<String, dynamic> json) {
  return _RecipeResponseDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeResponseDto {
  @JsonKey(defaultValue: <Map<String, dynamic>>[])
  List<Map<String, dynamic>> get items => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeResponseDtoCopyWith<RecipeResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeResponseDtoCopyWith<$Res> {
  factory $RecipeResponseDtoCopyWith(
          RecipeResponseDto value, $Res Function(RecipeResponseDto) then) =
      _$RecipeResponseDtoCopyWithImpl<$Res, RecipeResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: <Map<String, dynamic>>[])
      List<Map<String, dynamic>> items,
      @JsonKey(defaultValue: 0) int totalCount});
}

/// @nodoc
class _$RecipeResponseDtoCopyWithImpl<$Res, $Val extends RecipeResponseDto>
    implements $RecipeResponseDtoCopyWith<$Res> {
  _$RecipeResponseDtoCopyWithImpl(this._value, this._then);

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
              as List<Map<String, dynamic>>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeResponseDtoImplCopyWith<$Res>
    implements $RecipeResponseDtoCopyWith<$Res> {
  factory _$$RecipeResponseDtoImplCopyWith(_$RecipeResponseDtoImpl value,
          $Res Function(_$RecipeResponseDtoImpl) then) =
      __$$RecipeResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: <Map<String, dynamic>>[])
      List<Map<String, dynamic>> items,
      @JsonKey(defaultValue: 0) int totalCount});
}

/// @nodoc
class __$$RecipeResponseDtoImplCopyWithImpl<$Res>
    extends _$RecipeResponseDtoCopyWithImpl<$Res, _$RecipeResponseDtoImpl>
    implements _$$RecipeResponseDtoImplCopyWith<$Res> {
  __$$RecipeResponseDtoImplCopyWithImpl(_$RecipeResponseDtoImpl _value,
      $Res Function(_$RecipeResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
  }) {
    return _then(_$RecipeResponseDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeResponseDtoImpl extends _RecipeResponseDto {
  const _$RecipeResponseDtoImpl(
      {@JsonKey(defaultValue: <Map<String, dynamic>>[])
      required final List<Map<String, dynamic>> items,
      @JsonKey(defaultValue: 0) required this.totalCount})
      : _items = items,
        super._();

  factory _$RecipeResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeResponseDtoImplFromJson(json);

  final List<Map<String, dynamic>> _items;
  @override
  @JsonKey(defaultValue: <Map<String, dynamic>>[])
  List<Map<String, dynamic>> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(defaultValue: 0)
  final int totalCount;

  @override
  String toString() {
    return 'RecipeResponseDto(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeResponseDtoImpl &&
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
  _$$RecipeResponseDtoImplCopyWith<_$RecipeResponseDtoImpl> get copyWith =>
      __$$RecipeResponseDtoImplCopyWithImpl<_$RecipeResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeResponseDto extends RecipeResponseDto {
  const factory _RecipeResponseDto(
          {@JsonKey(defaultValue: <Map<String, dynamic>>[])
          required final List<Map<String, dynamic>> items,
          @JsonKey(defaultValue: 0) required final int totalCount}) =
      _$RecipeResponseDtoImpl;
  const _RecipeResponseDto._() : super._();

  factory _RecipeResponseDto.fromJson(Map<String, dynamic> json) =
      _$RecipeResponseDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: <Map<String, dynamic>>[])
  List<Map<String, dynamic>> get items;
  @override
  @JsonKey(defaultValue: 0)
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$RecipeResponseDtoImplCopyWith<_$RecipeResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
