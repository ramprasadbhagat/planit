// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_time_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryTimeDto _$DeliveryTimeDtoFromJson(Map<String, dynamic> json) {
  return _DeliveryTimeDto.fromJson(json);
}

/// @nodoc
mixin _$DeliveryTimeDto {
  @JsonKey(name: 'date', defaultValue: '')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'startTime', defaultValue: '')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'endTime', defaultValue: '')
  String get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryTimeDtoCopyWith<DeliveryTimeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTimeDtoCopyWith<$Res> {
  factory $DeliveryTimeDtoCopyWith(
          DeliveryTimeDto value, $Res Function(DeliveryTimeDto) then) =
      _$DeliveryTimeDtoCopyWithImpl<$Res, DeliveryTimeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date', defaultValue: '') String date,
      @JsonKey(name: 'startTime', defaultValue: '') String startTime,
      @JsonKey(name: 'endTime', defaultValue: '') String endTime});
}

/// @nodoc
class _$DeliveryTimeDtoCopyWithImpl<$Res, $Val extends DeliveryTimeDto>
    implements $DeliveryTimeDtoCopyWith<$Res> {
  _$DeliveryTimeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryTimeDtoImplCopyWith<$Res>
    implements $DeliveryTimeDtoCopyWith<$Res> {
  factory _$$DeliveryTimeDtoImplCopyWith(_$DeliveryTimeDtoImpl value,
          $Res Function(_$DeliveryTimeDtoImpl) then) =
      __$$DeliveryTimeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date', defaultValue: '') String date,
      @JsonKey(name: 'startTime', defaultValue: '') String startTime,
      @JsonKey(name: 'endTime', defaultValue: '') String endTime});
}

/// @nodoc
class __$$DeliveryTimeDtoImplCopyWithImpl<$Res>
    extends _$DeliveryTimeDtoCopyWithImpl<$Res, _$DeliveryTimeDtoImpl>
    implements _$$DeliveryTimeDtoImplCopyWith<$Res> {
  __$$DeliveryTimeDtoImplCopyWithImpl(
      _$DeliveryTimeDtoImpl _value, $Res Function(_$DeliveryTimeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$DeliveryTimeDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryTimeDtoImpl extends _DeliveryTimeDto {
  const _$DeliveryTimeDtoImpl(
      {@JsonKey(name: 'date', defaultValue: '') required this.date,
      @JsonKey(name: 'startTime', defaultValue: '') required this.startTime,
      @JsonKey(name: 'endTime', defaultValue: '') required this.endTime})
      : super._();

  factory _$DeliveryTimeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryTimeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'date', defaultValue: '')
  final String date;
  @override
  @JsonKey(name: 'startTime', defaultValue: '')
  final String startTime;
  @override
  @JsonKey(name: 'endTime', defaultValue: '')
  final String endTime;

  @override
  String toString() {
    return 'DeliveryTimeDto(date: $date, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTimeDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTimeDtoImplCopyWith<_$DeliveryTimeDtoImpl> get copyWith =>
      __$$DeliveryTimeDtoImplCopyWithImpl<_$DeliveryTimeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryTimeDtoImplToJson(
      this,
    );
  }
}

abstract class _DeliveryTimeDto extends DeliveryTimeDto {
  const factory _DeliveryTimeDto(
      {@JsonKey(name: 'date', defaultValue: '') required final String date,
      @JsonKey(name: 'startTime', defaultValue: '')
      required final String startTime,
      @JsonKey(name: 'endTime', defaultValue: '')
      required final String endTime}) = _$DeliveryTimeDtoImpl;
  const _DeliveryTimeDto._() : super._();

  factory _DeliveryTimeDto.fromJson(Map<String, dynamic> json) =
      _$DeliveryTimeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'date', defaultValue: '')
  String get date;
  @override
  @JsonKey(name: 'startTime', defaultValue: '')
  String get startTime;
  @override
  @JsonKey(name: 'endTime', defaultValue: '')
  String get endTime;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryTimeDtoImplCopyWith<_$DeliveryTimeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
