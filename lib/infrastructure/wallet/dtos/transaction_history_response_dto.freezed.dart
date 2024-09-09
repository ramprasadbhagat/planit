// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionHistoryResponseDto _$TransactionHistoryResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _TransactionHistoryResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionHistoryResponseDto {
  @JsonKey(defaultValue: <Map<String, dynamic>>[])
  List<Map<String, dynamic>> get items => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionHistoryResponseDtoCopyWith<TransactionHistoryResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryResponseDtoCopyWith<$Res> {
  factory $TransactionHistoryResponseDtoCopyWith(
          TransactionHistoryResponseDto value,
          $Res Function(TransactionHistoryResponseDto) then) =
      _$TransactionHistoryResponseDtoCopyWithImpl<$Res,
          TransactionHistoryResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: <Map<String, dynamic>>[])
      List<Map<String, dynamic>> items,
      @JsonKey(defaultValue: 0) int totalCount});
}

/// @nodoc
class _$TransactionHistoryResponseDtoCopyWithImpl<$Res,
        $Val extends TransactionHistoryResponseDto>
    implements $TransactionHistoryResponseDtoCopyWith<$Res> {
  _$TransactionHistoryResponseDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$TransactionHistoryResponseDtoImplCopyWith<$Res>
    implements $TransactionHistoryResponseDtoCopyWith<$Res> {
  factory _$$TransactionHistoryResponseDtoImplCopyWith(
          _$TransactionHistoryResponseDtoImpl value,
          $Res Function(_$TransactionHistoryResponseDtoImpl) then) =
      __$$TransactionHistoryResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: <Map<String, dynamic>>[])
      List<Map<String, dynamic>> items,
      @JsonKey(defaultValue: 0) int totalCount});
}

/// @nodoc
class __$$TransactionHistoryResponseDtoImplCopyWithImpl<$Res>
    extends _$TransactionHistoryResponseDtoCopyWithImpl<$Res,
        _$TransactionHistoryResponseDtoImpl>
    implements _$$TransactionHistoryResponseDtoImplCopyWith<$Res> {
  __$$TransactionHistoryResponseDtoImplCopyWithImpl(
      _$TransactionHistoryResponseDtoImpl _value,
      $Res Function(_$TransactionHistoryResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
  }) {
    return _then(_$TransactionHistoryResponseDtoImpl(
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
class _$TransactionHistoryResponseDtoImpl
    extends _TransactionHistoryResponseDto {
  const _$TransactionHistoryResponseDtoImpl(
      {@JsonKey(defaultValue: <Map<String, dynamic>>[])
      required final List<Map<String, dynamic>> items,
      @JsonKey(defaultValue: 0) required this.totalCount})
      : _items = items,
        super._();

  factory _$TransactionHistoryResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionHistoryResponseDtoImplFromJson(json);

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
    return 'TransactionHistoryResponseDto(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryResponseDtoImpl &&
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
  _$$TransactionHistoryResponseDtoImplCopyWith<
          _$TransactionHistoryResponseDtoImpl>
      get copyWith => __$$TransactionHistoryResponseDtoImplCopyWithImpl<
          _$TransactionHistoryResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionHistoryResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _TransactionHistoryResponseDto
    extends TransactionHistoryResponseDto {
  const factory _TransactionHistoryResponseDto(
          {@JsonKey(defaultValue: <Map<String, dynamic>>[])
          required final List<Map<String, dynamic>> items,
          @JsonKey(defaultValue: 0) required final int totalCount}) =
      _$TransactionHistoryResponseDtoImpl;
  const _TransactionHistoryResponseDto._() : super._();

  factory _TransactionHistoryResponseDto.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryResponseDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: <Map<String, dynamic>>[])
  List<Map<String, dynamic>> get items;
  @override
  @JsonKey(defaultValue: 0)
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryResponseDtoImplCopyWith<
          _$TransactionHistoryResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
