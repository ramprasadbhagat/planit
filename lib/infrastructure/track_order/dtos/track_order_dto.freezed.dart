// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackOrderDto _$TrackOrderDtoFromJson(Map<String, dynamic> json) {
  return _TrackOrderDto.fromJson(json);
}

/// @nodoc
mixin _$TrackOrderDto {
  @JsonKey(name: 'order_id', defaultValue: '')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_status', defaultValue: [])
  List<TrackOrderDetailsDto> get trackOrderStatusList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status', defaultValue: '')
  String get orderStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackOrderDtoCopyWith<TrackOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderDtoCopyWith<$Res> {
  factory $TrackOrderDtoCopyWith(
          TrackOrderDto value, $Res Function(TrackOrderDto) then) =
      _$TrackOrderDtoCopyWithImpl<$Res, TrackOrderDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id', defaultValue: '') String orderId,
      @JsonKey(name: 'all_status', defaultValue: [])
      List<TrackOrderDetailsDto> trackOrderStatusList,
      @JsonKey(name: 'order_status', defaultValue: '') String orderStatus});
}

/// @nodoc
class _$TrackOrderDtoCopyWithImpl<$Res, $Val extends TrackOrderDto>
    implements $TrackOrderDtoCopyWith<$Res> {
  _$TrackOrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? trackOrderStatusList = null,
    Object? orderStatus = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      trackOrderStatusList: null == trackOrderStatusList
          ? _value.trackOrderStatusList
          : trackOrderStatusList // ignore: cast_nullable_to_non_nullable
              as List<TrackOrderDetailsDto>,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackOrderDtoImplCopyWith<$Res>
    implements $TrackOrderDtoCopyWith<$Res> {
  factory _$$TrackOrderDtoImplCopyWith(
          _$TrackOrderDtoImpl value, $Res Function(_$TrackOrderDtoImpl) then) =
      __$$TrackOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id', defaultValue: '') String orderId,
      @JsonKey(name: 'all_status', defaultValue: [])
      List<TrackOrderDetailsDto> trackOrderStatusList,
      @JsonKey(name: 'order_status', defaultValue: '') String orderStatus});
}

/// @nodoc
class __$$TrackOrderDtoImplCopyWithImpl<$Res>
    extends _$TrackOrderDtoCopyWithImpl<$Res, _$TrackOrderDtoImpl>
    implements _$$TrackOrderDtoImplCopyWith<$Res> {
  __$$TrackOrderDtoImplCopyWithImpl(
      _$TrackOrderDtoImpl _value, $Res Function(_$TrackOrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? trackOrderStatusList = null,
    Object? orderStatus = null,
  }) {
    return _then(_$TrackOrderDtoImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      trackOrderStatusList: null == trackOrderStatusList
          ? _value._trackOrderStatusList
          : trackOrderStatusList // ignore: cast_nullable_to_non_nullable
              as List<TrackOrderDetailsDto>,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackOrderDtoImpl extends _TrackOrderDto {
  _$TrackOrderDtoImpl(
      {@JsonKey(name: 'order_id', defaultValue: '') required this.orderId,
      @JsonKey(name: 'all_status', defaultValue: [])
      required final List<TrackOrderDetailsDto> trackOrderStatusList,
      @JsonKey(name: 'order_status', defaultValue: '')
      required this.orderStatus})
      : _trackOrderStatusList = trackOrderStatusList,
        super._();

  factory _$TrackOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackOrderDtoImplFromJson(json);

  @override
  @JsonKey(name: 'order_id', defaultValue: '')
  final String orderId;
  final List<TrackOrderDetailsDto> _trackOrderStatusList;
  @override
  @JsonKey(name: 'all_status', defaultValue: [])
  List<TrackOrderDetailsDto> get trackOrderStatusList {
    if (_trackOrderStatusList is EqualUnmodifiableListView)
      return _trackOrderStatusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackOrderStatusList);
  }

  @override
  @JsonKey(name: 'order_status', defaultValue: '')
  final String orderStatus;

  @override
  String toString() {
    return 'TrackOrderDto(orderId: $orderId, trackOrderStatusList: $trackOrderStatusList, orderStatus: $orderStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackOrderDtoImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality()
                .equals(other._trackOrderStatusList, _trackOrderStatusList) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId,
      const DeepCollectionEquality().hash(_trackOrderStatusList), orderStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderDtoImplCopyWith<_$TrackOrderDtoImpl> get copyWith =>
      __$$TrackOrderDtoImplCopyWithImpl<_$TrackOrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _TrackOrderDto extends TrackOrderDto {
  factory _TrackOrderDto(
      {@JsonKey(name: 'order_id', defaultValue: '')
      required final String orderId,
      @JsonKey(name: 'all_status', defaultValue: [])
      required final List<TrackOrderDetailsDto> trackOrderStatusList,
      @JsonKey(name: 'order_status', defaultValue: '')
      required final String orderStatus}) = _$TrackOrderDtoImpl;
  _TrackOrderDto._() : super._();

  factory _TrackOrderDto.fromJson(Map<String, dynamic> json) =
      _$TrackOrderDtoImpl.fromJson;

  @override
  @JsonKey(name: 'order_id', defaultValue: '')
  String get orderId;
  @override
  @JsonKey(name: 'all_status', defaultValue: [])
  List<TrackOrderDetailsDto> get trackOrderStatusList;
  @override
  @JsonKey(name: 'order_status', defaultValue: '')
  String get orderStatus;
  @override
  @JsonKey(ignore: true)
  _$$TrackOrderDtoImplCopyWith<_$TrackOrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
