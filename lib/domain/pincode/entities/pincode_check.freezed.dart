// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PincodeCheck {
  String get pincode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PincodeCheckCopyWith<PincodeCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeCheckCopyWith<$Res> {
  factory $PincodeCheckCopyWith(
          PincodeCheck value, $Res Function(PincodeCheck) then) =
      _$PincodeCheckCopyWithImpl<$Res, PincodeCheck>;
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class _$PincodeCheckCopyWithImpl<$Res, $Val extends PincodeCheck>
    implements $PincodeCheckCopyWith<$Res> {
  _$PincodeCheckCopyWithImpl(this._value, this._then);

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
abstract class _$$PincodeCheckImplCopyWith<$Res>
    implements $PincodeCheckCopyWith<$Res> {
  factory _$$PincodeCheckImplCopyWith(
          _$PincodeCheckImpl value, $Res Function(_$PincodeCheckImpl) then) =
      __$$PincodeCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class __$$PincodeCheckImplCopyWithImpl<$Res>
    extends _$PincodeCheckCopyWithImpl<$Res, _$PincodeCheckImpl>
    implements _$$PincodeCheckImplCopyWith<$Res> {
  __$$PincodeCheckImplCopyWithImpl(
      _$PincodeCheckImpl _value, $Res Function(_$PincodeCheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_$PincodeCheckImpl(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PincodeCheckImpl implements _PincodeCheck {
  const _$PincodeCheckImpl({required this.pincode});

  @override
  final String pincode;

  @override
  String toString() {
    return 'PincodeCheck(pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeCheckImpl &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeCheckImplCopyWith<_$PincodeCheckImpl> get copyWith =>
      __$$PincodeCheckImplCopyWithImpl<_$PincodeCheckImpl>(this, _$identity);
}

abstract class _PincodeCheck implements PincodeCheck {
  const factory _PincodeCheck({required final String pincode}) =
      _$PincodeCheckImpl;

  @override
  String get pincode;
  @override
  @JsonKey(ignore: true)
  _$$PincodeCheckImplCopyWith<_$PincodeCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
