// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode_check_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PincodeCheckDto _$PincodeCheckDtoFromJson(Map<String, dynamic> json) {
  return _PincodeCheckDto.fromJson(json);
}

/// @nodoc
mixin _$PincodeCheckDto {
  @JsonKey(defaultValue: '')
  String get pincode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PincodeCheckDtoCopyWith<PincodeCheckDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeCheckDtoCopyWith<$Res> {
  factory $PincodeCheckDtoCopyWith(
          PincodeCheckDto value, $Res Function(PincodeCheckDto) then) =
      _$PincodeCheckDtoCopyWithImpl<$Res, PincodeCheckDto>;
  @useResult
  $Res call({@JsonKey(defaultValue: '') String pincode});
}

/// @nodoc
class _$PincodeCheckDtoCopyWithImpl<$Res, $Val extends PincodeCheckDto>
    implements $PincodeCheckDtoCopyWith<$Res> {
  _$PincodeCheckDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$PincodeCheckDtoImplCopyWith<$Res>
    implements $PincodeCheckDtoCopyWith<$Res> {
  factory _$$PincodeCheckDtoImplCopyWith(_$PincodeCheckDtoImpl value,
          $Res Function(_$PincodeCheckDtoImpl) then) =
      __$$PincodeCheckDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(defaultValue: '') String pincode});
}

/// @nodoc
class __$$PincodeCheckDtoImplCopyWithImpl<$Res>
    extends _$PincodeCheckDtoCopyWithImpl<$Res, _$PincodeCheckDtoImpl>
    implements _$$PincodeCheckDtoImplCopyWith<$Res> {
  __$$PincodeCheckDtoImplCopyWithImpl(
      _$PincodeCheckDtoImpl _value, $Res Function(_$PincodeCheckDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_$PincodeCheckDtoImpl(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PincodeCheckDtoImpl extends _PincodeCheckDto {
  _$PincodeCheckDtoImpl({@JsonKey(defaultValue: '') required this.pincode})
      : super._();

  factory _$PincodeCheckDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PincodeCheckDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String pincode;

  @override
  String toString() {
    return 'PincodeCheckDto(pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeCheckDtoImpl &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeCheckDtoImplCopyWith<_$PincodeCheckDtoImpl> get copyWith =>
      __$$PincodeCheckDtoImplCopyWithImpl<_$PincodeCheckDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PincodeCheckDtoImplToJson(
      this,
    );
  }
}

abstract class _PincodeCheckDto extends PincodeCheckDto {
  factory _PincodeCheckDto(
          {@JsonKey(defaultValue: '') required final String pincode}) =
      _$PincodeCheckDtoImpl;
  _PincodeCheckDto._() : super._();

  factory _PincodeCheckDto.fromJson(Map<String, dynamic> json) =
      _$PincodeCheckDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get pincode;
  @override
  @JsonKey(ignore: true)
  _$$PincodeCheckDtoImplCopyWith<_$PincodeCheckDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
