// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PincodeDto _$PincodeDtoFromJson(Map<String, dynamic> json) {
  return _PincodeDto.fromJson(json);
}

/// @nodoc
mixin _$PincodeDto {
  @JsonKey(defaultValue: '')
  String get pincode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PincodeDtoCopyWith<PincodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeDtoCopyWith<$Res> {
  factory $PincodeDtoCopyWith(
          PincodeDto value, $Res Function(PincodeDto) then) =
      _$PincodeDtoCopyWithImpl<$Res, PincodeDto>;
  @useResult
  $Res call({@JsonKey(defaultValue: '') String pincode});
}

/// @nodoc
class _$PincodeDtoCopyWithImpl<$Res, $Val extends PincodeDto>
    implements $PincodeDtoCopyWith<$Res> {
  _$PincodeDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$PincodeDtoImplCopyWith<$Res>
    implements $PincodeDtoCopyWith<$Res> {
  factory _$$PincodeDtoImplCopyWith(
          _$PincodeDtoImpl value, $Res Function(_$PincodeDtoImpl) then) =
      __$$PincodeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(defaultValue: '') String pincode});
}

/// @nodoc
class __$$PincodeDtoImplCopyWithImpl<$Res>
    extends _$PincodeDtoCopyWithImpl<$Res, _$PincodeDtoImpl>
    implements _$$PincodeDtoImplCopyWith<$Res> {
  __$$PincodeDtoImplCopyWithImpl(
      _$PincodeDtoImpl _value, $Res Function(_$PincodeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_$PincodeDtoImpl(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PincodeDtoImpl extends _PincodeDto {
  _$PincodeDtoImpl({@JsonKey(defaultValue: '') required this.pincode})
      : super._();

  factory _$PincodeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PincodeDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String pincode;

  @override
  String toString() {
    return 'PincodeDto(pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeDtoImpl &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeDtoImplCopyWith<_$PincodeDtoImpl> get copyWith =>
      __$$PincodeDtoImplCopyWithImpl<_$PincodeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PincodeDtoImplToJson(
      this,
    );
  }
}

abstract class _PincodeDto extends PincodeDto {
  factory _PincodeDto(
          {@JsonKey(defaultValue: '') required final String pincode}) =
      _$PincodeDtoImpl;
  _PincodeDto._() : super._();

  factory _PincodeDto.fromJson(Map<String, dynamic> json) =
      _$PincodeDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get pincode;
  @override
  @JsonKey(ignore: true)
  _$$PincodeDtoImplCopyWith<_$PincodeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
