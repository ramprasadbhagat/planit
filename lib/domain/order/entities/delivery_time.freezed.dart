// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryTime {
  DateTimeStringValue get date => throw _privateConstructorUsedError;
  DateTimeStringValue get startTime => throw _privateConstructorUsedError;
  DateTimeStringValue get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryTimeCopyWith<DeliveryTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTimeCopyWith<$Res> {
  factory $DeliveryTimeCopyWith(
          DeliveryTime value, $Res Function(DeliveryTime) then) =
      _$DeliveryTimeCopyWithImpl<$Res, DeliveryTime>;
  @useResult
  $Res call(
      {DateTimeStringValue date,
      DateTimeStringValue startTime,
      DateTimeStringValue endTime});
}

/// @nodoc
class _$DeliveryTimeCopyWithImpl<$Res, $Val extends DeliveryTime>
    implements $DeliveryTimeCopyWith<$Res> {
  _$DeliveryTimeCopyWithImpl(this._value, this._then);

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
              as DateTimeStringValue,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTimeStringValue,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTimeStringValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryTimeImplCopyWith<$Res>
    implements $DeliveryTimeCopyWith<$Res> {
  factory _$$DeliveryTimeImplCopyWith(
          _$DeliveryTimeImpl value, $Res Function(_$DeliveryTimeImpl) then) =
      __$$DeliveryTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTimeStringValue date,
      DateTimeStringValue startTime,
      DateTimeStringValue endTime});
}

/// @nodoc
class __$$DeliveryTimeImplCopyWithImpl<$Res>
    extends _$DeliveryTimeCopyWithImpl<$Res, _$DeliveryTimeImpl>
    implements _$$DeliveryTimeImplCopyWith<$Res> {
  __$$DeliveryTimeImplCopyWithImpl(
      _$DeliveryTimeImpl _value, $Res Function(_$DeliveryTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$DeliveryTimeImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTimeStringValue,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTimeStringValue,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTimeStringValue,
    ));
  }
}

/// @nodoc

class _$DeliveryTimeImpl implements _DeliveryTime {
  const _$DeliveryTimeImpl(
      {required this.date, required this.startTime, required this.endTime});

  @override
  final DateTimeStringValue date;
  @override
  final DateTimeStringValue startTime;
  @override
  final DateTimeStringValue endTime;

  @override
  String toString() {
    return 'DeliveryTime(date: $date, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTimeImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTimeImplCopyWith<_$DeliveryTimeImpl> get copyWith =>
      __$$DeliveryTimeImplCopyWithImpl<_$DeliveryTimeImpl>(this, _$identity);
}

abstract class _DeliveryTime implements DeliveryTime {
  const factory _DeliveryTime(
      {required final DateTimeStringValue date,
      required final DateTimeStringValue startTime,
      required final DateTimeStringValue endTime}) = _$DeliveryTimeImpl;

  @override
  DateTimeStringValue get date;
  @override
  DateTimeStringValue get startTime;
  @override
  DateTimeStringValue get endTime;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryTimeImplCopyWith<_$DeliveryTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
