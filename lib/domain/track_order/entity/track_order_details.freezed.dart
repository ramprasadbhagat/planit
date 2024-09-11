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
  OrderStatus get status => throw _privateConstructorUsedError;
  DeliveryDate get date => throw _privateConstructorUsedError;

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
  $Res call({OrderStatus status, DeliveryDate date});
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
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DeliveryDate,
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
  $Res call({OrderStatus status, DeliveryDate date});
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
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_$TrackOrderDetailsImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DeliveryDate,
    ));
  }
}

/// @nodoc

class _$TrackOrderDetailsImpl extends _TrackOrderDetails {
  _$TrackOrderDetailsImpl({required this.status, required this.date})
      : super._();

  @override
  final OrderStatus status;
  @override
  final DeliveryDate date;

  @override
  String toString() {
    return 'TrackOrderDetails(status: $status, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackOrderDetailsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderDetailsImplCopyWith<_$TrackOrderDetailsImpl> get copyWith =>
      __$$TrackOrderDetailsImplCopyWithImpl<_$TrackOrderDetailsImpl>(
          this, _$identity);
}

abstract class _TrackOrderDetails extends TrackOrderDetails {
  factory _TrackOrderDetails(
      {required final OrderStatus status,
      required final DeliveryDate date}) = _$TrackOrderDetailsImpl;
  _TrackOrderDetails._() : super._();

  @override
  OrderStatus get status;
  @override
  DeliveryDate get date;
  @override
  @JsonKey(ignore: true)
  _$$TrackOrderDetailsImplCopyWith<_$TrackOrderDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
