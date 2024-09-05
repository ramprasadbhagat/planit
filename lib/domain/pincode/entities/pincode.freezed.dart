// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PinCode {
  @HiveField(0)
  String get pin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PinCodeCopyWith<PinCode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinCodeCopyWith<$Res> {
  factory $PinCodeCopyWith(PinCode value, $Res Function(PinCode) then) =
      _$PinCodeCopyWithImpl<$Res, PinCode>;
  @useResult
  $Res call({@HiveField(0) String pin});
}

/// @nodoc
class _$PinCodeCopyWithImpl<$Res, $Val extends PinCode>
    implements $PinCodeCopyWith<$Res> {
  _$PinCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PinCodeImplCopyWith<$Res> implements $PinCodeCopyWith<$Res> {
  factory _$$PinCodeImplCopyWith(
          _$PinCodeImpl value, $Res Function(_$PinCodeImpl) then) =
      __$$PinCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String pin});
}

/// @nodoc
class __$$PinCodeImplCopyWithImpl<$Res>
    extends _$PinCodeCopyWithImpl<$Res, _$PinCodeImpl>
    implements _$$PinCodeImplCopyWith<$Res> {
  __$$PinCodeImplCopyWithImpl(
      _$PinCodeImpl _value, $Res Function(_$PinCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$PinCodeImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(
    typeId: HiveConstants.pinCodeId, adapterName: HiveConstants.pinCodeAdapter)
class _$PinCodeImpl implements _PinCode {
  _$PinCodeImpl({@HiveField(0) required this.pin});

  @override
  @HiveField(0)
  final String pin;

  @override
  String toString() {
    return 'PinCode(pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinCodeImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinCodeImplCopyWith<_$PinCodeImpl> get copyWith =>
      __$$PinCodeImplCopyWithImpl<_$PinCodeImpl>(this, _$identity);
}

abstract class _PinCode implements PinCode {
  factory _PinCode({@HiveField(0) required final String pin}) = _$PinCodeImpl;

  @override
  @HiveField(0)
  String get pin;
  @override
  @JsonKey(ignore: true)
  _$$PinCodeImplCopyWith<_$PinCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
