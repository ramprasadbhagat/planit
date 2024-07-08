// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackOrderDetailsDto _$TrackOrderDetailsDtoFromJson(Map<String, dynamic> json) {
  return _TrackOrderDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$TrackOrderDetailsDto {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id', defaultValue: '')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status', defaultValue: '')
  String get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'date', defaultValue: '')
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackOrderDetailsDtoCopyWith<TrackOrderDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderDetailsDtoCopyWith<$Res> {
  factory $TrackOrderDetailsDtoCopyWith(TrackOrderDetailsDto value,
          $Res Function(TrackOrderDetailsDto) then) =
      _$TrackOrderDetailsDtoCopyWithImpl<$Res, TrackOrderDetailsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'order_id', defaultValue: '') String orderId,
      @JsonKey(name: 'order_status', defaultValue: '') String orderStatus,
      @JsonKey(name: 'date', defaultValue: '') String date});
}

/// @nodoc
class _$TrackOrderDetailsDtoCopyWithImpl<$Res,
        $Val extends TrackOrderDetailsDto>
    implements $TrackOrderDetailsDtoCopyWith<$Res> {
  _$TrackOrderDetailsDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$TrackOrderDetailsDtoImplCopyWith<$Res>
    implements $TrackOrderDetailsDtoCopyWith<$Res> {
  factory _$$TrackOrderDetailsDtoImplCopyWith(_$TrackOrderDetailsDtoImpl value,
          $Res Function(_$TrackOrderDetailsDtoImpl) then) =
      __$$TrackOrderDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'order_id', defaultValue: '') String orderId,
      @JsonKey(name: 'order_status', defaultValue: '') String orderStatus,
      @JsonKey(name: 'date', defaultValue: '') String date});
}

/// @nodoc
class __$$TrackOrderDetailsDtoImplCopyWithImpl<$Res>
    extends _$TrackOrderDetailsDtoCopyWithImpl<$Res, _$TrackOrderDetailsDtoImpl>
    implements _$$TrackOrderDetailsDtoImplCopyWith<$Res> {
  __$$TrackOrderDetailsDtoImplCopyWithImpl(_$TrackOrderDetailsDtoImpl _value,
      $Res Function(_$TrackOrderDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? orderStatus = null,
    Object? date = null,
  }) {
    return _then(_$TrackOrderDetailsDtoImpl(
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
@JsonSerializable()
class _$TrackOrderDetailsDtoImpl extends _TrackOrderDetailsDto {
  _$TrackOrderDetailsDtoImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'order_id', defaultValue: '') required this.orderId,
      @JsonKey(name: 'order_status', defaultValue: '')
      required this.orderStatus,
      @JsonKey(name: 'date', defaultValue: '') required this.date})
      : super._();

  factory _$TrackOrderDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackOrderDetailsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'order_id', defaultValue: '')
  final String orderId;
  @override
  @JsonKey(name: 'order_status', defaultValue: '')
  final String orderStatus;
  @override
  @JsonKey(name: 'date', defaultValue: '')
  final String date;

  @override
  String toString() {
    return 'TrackOrderDetailsDto(id: $id, orderId: $orderId, orderStatus: $orderStatus, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackOrderDetailsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderId, orderStatus, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderDetailsDtoImplCopyWith<_$TrackOrderDetailsDtoImpl>
      get copyWith =>
          __$$TrackOrderDetailsDtoImplCopyWithImpl<_$TrackOrderDetailsDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackOrderDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _TrackOrderDetailsDto extends TrackOrderDetailsDto {
  factory _TrackOrderDetailsDto(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'order_id', defaultValue: '')
      required final String orderId,
      @JsonKey(name: 'order_status', defaultValue: '')
      required final String orderStatus,
      @JsonKey(name: 'date', defaultValue: '')
      required final String date}) = _$TrackOrderDetailsDtoImpl;
  _TrackOrderDetailsDto._() : super._();

  factory _TrackOrderDetailsDto.fromJson(Map<String, dynamic> json) =
      _$TrackOrderDetailsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'order_id', defaultValue: '')
  String get orderId;
  @override
  @JsonKey(name: 'order_status', defaultValue: '')
  String get orderStatus;
  @override
  @JsonKey(name: 'date', defaultValue: '')
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$TrackOrderDetailsDtoImplCopyWith<_$TrackOrderDetailsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
