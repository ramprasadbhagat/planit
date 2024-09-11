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
  List<TrackOrderDetails> get trackOrderStatusList =>
      throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  StringValue get id => throw _privateConstructorUsedError;

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
  $Res call(
      {List<TrackOrderDetails> trackOrderStatusList,
      OrderStatus orderStatus,
      StringValue id});
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
    Object? trackOrderStatusList = null,
    Object? orderStatus = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      trackOrderStatusList: null == trackOrderStatusList
          ? _value.trackOrderStatusList
          : trackOrderStatusList // ignore: cast_nullable_to_non_nullable
              as List<TrackOrderDetails>,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
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
  $Res call(
      {List<TrackOrderDetails> trackOrderStatusList,
      OrderStatus orderStatus,
      StringValue id});
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
    Object? trackOrderStatusList = null,
    Object? orderStatus = null,
    Object? id = null,
  }) {
    return _then(_$TrackOrderImpl(
      trackOrderStatusList: null == trackOrderStatusList
          ? _value._trackOrderStatusList
          : trackOrderStatusList // ignore: cast_nullable_to_non_nullable
              as List<TrackOrderDetails>,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
    ));
  }
}

/// @nodoc

class _$TrackOrderImpl extends _TrackOrder {
  _$TrackOrderImpl(
      {required final List<TrackOrderDetails> trackOrderStatusList,
      required this.orderStatus,
      required this.id})
      : _trackOrderStatusList = trackOrderStatusList,
        super._();

  final List<TrackOrderDetails> _trackOrderStatusList;
  @override
  List<TrackOrderDetails> get trackOrderStatusList {
    if (_trackOrderStatusList is EqualUnmodifiableListView)
      return _trackOrderStatusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackOrderStatusList);
  }

  @override
  final OrderStatus orderStatus;
  @override
  final StringValue id;

  @override
  String toString() {
    return 'TrackOrder(trackOrderStatusList: $trackOrderStatusList, orderStatus: $orderStatus, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackOrderImpl &&
            const DeepCollectionEquality()
                .equals(other._trackOrderStatusList, _trackOrderStatusList) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trackOrderStatusList),
      orderStatus,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderImplCopyWith<_$TrackOrderImpl> get copyWith =>
      __$$TrackOrderImplCopyWithImpl<_$TrackOrderImpl>(this, _$identity);
}

abstract class _TrackOrder extends TrackOrder {
  factory _TrackOrder(
      {required final List<TrackOrderDetails> trackOrderStatusList,
      required final OrderStatus orderStatus,
      required final StringValue id}) = _$TrackOrderImpl;
  _TrackOrder._() : super._();

  @override
  List<TrackOrderDetails> get trackOrderStatusList;
  @override
  OrderStatus get orderStatus;
  @override
  StringValue get id;
  @override
  @JsonKey(ignore: true)
  _$$TrackOrderImplCopyWith<_$TrackOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
