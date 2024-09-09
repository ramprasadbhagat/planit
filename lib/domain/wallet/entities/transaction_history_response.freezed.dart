// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionHistoryResponse {
  List<TransactionHistory> get items => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionHistoryResponseCopyWith<TransactionHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryResponseCopyWith<$Res> {
  factory $TransactionHistoryResponseCopyWith(TransactionHistoryResponse value,
          $Res Function(TransactionHistoryResponse) then) =
      _$TransactionHistoryResponseCopyWithImpl<$Res,
          TransactionHistoryResponse>;
  @useResult
  $Res call({List<TransactionHistory> items, int totalCount});
}

/// @nodoc
class _$TransactionHistoryResponseCopyWithImpl<$Res,
        $Val extends TransactionHistoryResponse>
    implements $TransactionHistoryResponseCopyWith<$Res> {
  _$TransactionHistoryResponseCopyWithImpl(this._value, this._then);

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
              as List<TransactionHistory>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionHistoryResponseImplCopyWith<$Res>
    implements $TransactionHistoryResponseCopyWith<$Res> {
  factory _$$TransactionHistoryResponseImplCopyWith(
          _$TransactionHistoryResponseImpl value,
          $Res Function(_$TransactionHistoryResponseImpl) then) =
      __$$TransactionHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionHistory> items, int totalCount});
}

/// @nodoc
class __$$TransactionHistoryResponseImplCopyWithImpl<$Res>
    extends _$TransactionHistoryResponseCopyWithImpl<$Res,
        _$TransactionHistoryResponseImpl>
    implements _$$TransactionHistoryResponseImplCopyWith<$Res> {
  __$$TransactionHistoryResponseImplCopyWithImpl(
      _$TransactionHistoryResponseImpl _value,
      $Res Function(_$TransactionHistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
  }) {
    return _then(_$TransactionHistoryResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TransactionHistory>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TransactionHistoryResponseImpl implements _TransactionHistoryResponse {
  const _$TransactionHistoryResponseImpl(
      {required final List<TransactionHistory> items, required this.totalCount})
      : _items = items;

  final List<TransactionHistory> _items;
  @override
  List<TransactionHistory> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int totalCount;

  @override
  String toString() {
    return 'TransactionHistoryResponse(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionHistoryResponseImplCopyWith<_$TransactionHistoryResponseImpl>
      get copyWith => __$$TransactionHistoryResponseImplCopyWithImpl<
          _$TransactionHistoryResponseImpl>(this, _$identity);
}

abstract class _TransactionHistoryResponse
    implements TransactionHistoryResponse {
  const factory _TransactionHistoryResponse(
      {required final List<TransactionHistory> items,
      required final int totalCount}) = _$TransactionHistoryResponseImpl;

  @override
  List<TransactionHistory> get items;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryResponseImplCopyWith<_$TransactionHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
