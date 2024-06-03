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
mixin _$Pincode {
  String get pincode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PincodeCopyWith<Pincode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeCopyWith<$Res> {
  factory $PincodeCopyWith(Pincode value, $Res Function(Pincode) then) =
      _$PincodeCopyWithImpl<$Res, Pincode>;
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class _$PincodeCopyWithImpl<$Res, $Val extends Pincode>
    implements $PincodeCopyWith<$Res> {
  _$PincodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_value.copyWith(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PincodeImplCopyWith<$Res> implements $PincodeCopyWith<$Res> {
  factory _$$PincodeImplCopyWith(
          _$PincodeImpl value, $Res Function(_$PincodeImpl) then) =
      __$$PincodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class __$$PincodeImplCopyWithImpl<$Res>
    extends _$PincodeCopyWithImpl<$Res, _$PincodeImpl>
    implements _$$PincodeImplCopyWith<$Res> {
  __$$PincodeImplCopyWithImpl(
      _$PincodeImpl _value, $Res Function(_$PincodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_$PincodeImpl(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PincodeImpl implements _Pincode {
  const _$PincodeImpl({required this.pincode});

  @override
  final String pincode;

  @override
  String toString() {
    return 'Pincode(pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeImpl &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeImplCopyWith<_$PincodeImpl> get copyWith =>
      __$$PincodeImplCopyWithImpl<_$PincodeImpl>(this, _$identity);
}

abstract class _Pincode implements Pincode {
  const factory _Pincode({required final String pincode}) = _$PincodeImpl;

  @override
  String get pincode;
  @override
  @JsonKey(ignore: true)
  _$$PincodeImplCopyWith<_$PincodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
