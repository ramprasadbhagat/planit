// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackOrder {
  List<TrackOrderDetails> get trackOrderItems =>
      throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackOrderCopyWith<TrackOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderCopyWith<$Res> {
  factory $TrackOrderCopyWith(
          TrackOrder value, $Res Function(TrackOrder) then) =
      _$TrackOrderCopyWithImpl<$Res, TrackOrder>;
  @useResult
  $Res call({List<TrackOrderDetails> trackOrderItems, int totalCount});
}

/// @nodoc
class _$TrackOrderCopyWithImpl<$Res, $Val extends TrackOrder>
    implements $TrackOrderCopyWith<$Res> {
  _$TrackOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackOrderItems = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      trackOrderItems: null == trackOrderItems
          ? _value.trackOrderItems
          : trackOrderItems // ignore: cast_nullable_to_non_nullable
              as List<TrackOrderDetails>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackOrderImplCopyWith<$Res>
    implements $TrackOrderCopyWith<$Res> {
  factory _$$TrackOrderImplCopyWith(
          _$TrackOrderImpl value, $Res Function(_$TrackOrderImpl) then) =
      __$$TrackOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrackOrderDetails> trackOrderItems, int totalCount});
}

/// @nodoc
class __$$TrackOrderImplCopyWithImpl<$Res>
    extends _$TrackOrderCopyWithImpl<$Res, _$TrackOrderImpl>
    implements _$$TrackOrderImplCopyWith<$Res> {
  __$$TrackOrderImplCopyWithImpl(
      _$TrackOrderImpl _value, $Res Function(_$TrackOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackOrderItems = null,
    Object? totalCount = null,
  }) {
    return _then(_$TrackOrderImpl(
      trackOrderItems: null == trackOrderItems
          ? _value._trackOrderItems
          : trackOrderItems // ignore: cast_nullable_to_non_nullable
              as List<TrackOrderDetails>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TrackOrderImpl extends _TrackOrder {
  _$TrackOrderImpl(
      {required final List<TrackOrderDetails> trackOrderItems,
      required this.totalCount})
      : _trackOrderItems = trackOrderItems,
        super._();

  final List<TrackOrderDetails> _trackOrderItems;
  @override
  List<TrackOrderDetails> get trackOrderItems {
    if (_trackOrderItems is EqualUnmodifiableListView) return _trackOrderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackOrderItems);
  }

  @override
  final int totalCount;

  @override
  String toString() {
    return 'TrackOrder(trackOrderItems: $trackOrderItems, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackOrderImpl &&
            const DeepCollectionEquality()
                .equals(other._trackOrderItems, _trackOrderItems) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_trackOrderItems), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderImplCopyWith<_$TrackOrderImpl> get copyWith =>
      __$$TrackOrderImplCopyWithImpl<_$TrackOrderImpl>(this, _$identity);
}

abstract class _TrackOrder extends TrackOrder {
  factory _TrackOrder(
      {required final List<TrackOrderDetails> trackOrderItems,
      required final int totalCount}) = _$TrackOrderImpl;
  _TrackOrder._() : super._();

  @override
  List<TrackOrderDetails> get trackOrderItems;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$TrackOrderImplCopyWith<_$TrackOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
