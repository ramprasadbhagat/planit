// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackOrderDetails {
  String get id => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackOrderDetailsCopyWith<TrackOrderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderDetailsCopyWith<$Res> {
  factory $TrackOrderDetailsCopyWith(
          TrackOrderDetails value, $Res Function(TrackOrderDetails) then) =
      _$TrackOrderDetailsCopyWithImpl<$Res, TrackOrderDetails>;
  @useResult
  $Res call({String id, String orderId, String orderStatus, String date});
}

/// @nodoc
class _$TrackOrderDetailsCopyWithImpl<$Res, $Val extends TrackOrderDetails>
    implements $TrackOrderDetailsCopyWith<$Res> {
  _$TrackOrderDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? orderStatus = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackOrderDetailsImplCopyWith<$Res>
    implements $TrackOrderDetailsCopyWith<$Res> {
  factory _$$TrackOrderDetailsImplCopyWith(_$TrackOrderDetailsImpl value,
          $Res Function(_$TrackOrderDetailsImpl) then) =
      __$$TrackOrderDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String orderId, String orderStatus, String date});
}

/// @nodoc
class __$$TrackOrderDetailsImplCopyWithImpl<$Res>
    extends _$TrackOrderDetailsCopyWithImpl<$Res, _$TrackOrderDetailsImpl>
    implements _$$TrackOrderDetailsImplCopyWith<$Res> {
  __$$TrackOrderDetailsImplCopyWithImpl(_$TrackOrderDetailsImpl _value,
      $Res Function(_$TrackOrderDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? orderStatus = null,
    Object? date = null,
  }) {
    return _then(_$TrackOrderDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrackOrderDetailsImpl extends _TrackOrderDetails {
  _$TrackOrderDetailsImpl(
      {required this.id,
      required this.orderId,
      required this.orderStatus,
      required this.date})
      : super._();

  @override
  final String id;
  @override
  final String orderId;
  @override
  final String orderStatus;
  @override
  final String date;

  @override
  String toString() {
    return 'TrackOrderDetails(id: $id, orderId: $orderId, orderStatus: $orderStatus, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackOrderDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, orderId, orderStatus, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderDetailsImplCopyWith<_$TrackOrderDetailsImpl> get copyWith =>
      __$$TrackOrderDetailsImplCopyWithImpl<_$TrackOrderDetailsImpl>(
          this, _$identity);
}

abstract class _TrackOrderDetails extends TrackOrderDetails {
  factory _TrackOrderDetails(
      {required final String id,
      required final String orderId,
      required final String orderStatus,
      required final String date}) = _$TrackOrderDetailsImpl;
  _TrackOrderDetails._() : super._();

  @override
  String get id;
  @override
  String get orderId;
  @override
  String get orderStatus;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$TrackOrderDetailsImplCopyWith<_$TrackOrderDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
