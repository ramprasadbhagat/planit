// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponseDto _$ProductResponseDtoFromJson(Map<String, dynamic> json) {
  return _ProductResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductResponseDto {
  @JsonKey(defaultValue: [])
  List<ProductDto> get items => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseDtoCopyWith<ProductResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseDtoCopyWith<$Res> {
  factory $ProductResponseDtoCopyWith(
          ProductResponseDto value, $Res Function(ProductResponseDto) then) =
      _$ProductResponseDtoCopyWithImpl<$Res, ProductResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<ProductDto> items,
      @JsonKey(defaultValue: 0) int totalCount});
}

/// @nodoc
class _$ProductResponseDtoCopyWithImpl<$Res, $Val extends ProductResponseDto>
    implements $ProductResponseDtoCopyWith<$Res> {
  _$ProductResponseDtoCopyWithImpl(this._value, this._then);

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
              as List<ProductDto>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductResponseDtoImplCopyWith<$Res>
    implements $ProductResponseDtoCopyWith<$Res> {
  factory _$$ProductResponseDtoImplCopyWith(_$ProductResponseDtoImpl value,
          $Res Function(_$ProductResponseDtoImpl) then) =
      __$$ProductResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<ProductDto> items,
      @JsonKey(defaultValue: 0) int totalCount});
}

/// @nodoc
class __$$ProductResponseDtoImplCopyWithImpl<$Res>
    extends _$ProductResponseDtoCopyWithImpl<$Res, _$ProductResponseDtoImpl>
    implements _$$ProductResponseDtoImplCopyWith<$Res> {
  __$$ProductResponseDtoImplCopyWithImpl(_$ProductResponseDtoImpl _value,
      $Res Function(_$ProductResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
  }) {
    return _then(_$ProductResponseDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseDtoImpl extends _ProductResponseDto {
  const _$ProductResponseDtoImpl(
      {@JsonKey(defaultValue: []) required final List<ProductDto> items,
      @JsonKey(defaultValue: 0) required this.totalCount})
      : _items = items,
        super._();

  factory _$ProductResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseDtoImplFromJson(json);

  final List<ProductDto> _items;
  @override
  @JsonKey(defaultValue: [])
  List<ProductDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(defaultValue: 0)
  final int totalCount;

  @override
  String toString() {
    return 'ProductResponseDto(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseDtoImpl &&
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
  _$$ProductResponseDtoImplCopyWith<_$ProductResponseDtoImpl> get copyWith =>
      __$$ProductResponseDtoImplCopyWithImpl<_$ProductResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductResponseDto extends ProductResponseDto {
  const factory _ProductResponseDto(
          {@JsonKey(defaultValue: []) required final List<ProductDto> items,
          @JsonKey(defaultValue: 0) required final int totalCount}) =
      _$ProductResponseDtoImpl;
  const _ProductResponseDto._() : super._();

  factory _ProductResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductResponseDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<ProductDto> get items;
  @override
  @JsonKey(defaultValue: 0)
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$ProductResponseDtoImplCopyWith<_$ProductResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
