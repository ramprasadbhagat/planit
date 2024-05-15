// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpDto _$OtpDtoFromJson(Map<String, dynamic> json) {
  return _OtpDto.fromJson(json);
}

/// @nodoc
mixin _$OtpDto {
  @JsonKey(name: 'user_id', defaultValue: '')
  String get userId => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpDtoCopyWith<OtpDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpDtoCopyWith<$Res> {
  factory $OtpDtoCopyWith(OtpDto value, $Res Function(OtpDto) then) =
      _$OtpDtoCopyWithImpl<$Res, OtpDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id', defaultValue: '') String userId, String otp});
}

/// @nodoc
class _$OtpDtoCopyWithImpl<$Res, $Val extends OtpDto>
    implements $OtpDtoCopyWith<$Res> {
  _$OtpDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpDtoImplCopyWith<$Res> implements $OtpDtoCopyWith<$Res> {
  factory _$$OtpDtoImplCopyWith(
          _$OtpDtoImpl value, $Res Function(_$OtpDtoImpl) then) =
      __$$OtpDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id', defaultValue: '') String userId, String otp});
}

/// @nodoc
class __$$OtpDtoImplCopyWithImpl<$Res>
    extends _$OtpDtoCopyWithImpl<$Res, _$OtpDtoImpl>
    implements _$$OtpDtoImplCopyWith<$Res> {
  __$$OtpDtoImplCopyWithImpl(
      _$OtpDtoImpl _value, $Res Function(_$OtpDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? otp = null,
  }) {
    return _then(_$OtpDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpDtoImpl extends _OtpDto {
  _$OtpDtoImpl(
      {@JsonKey(name: 'user_id', defaultValue: '') required this.userId,
      required this.otp})
      : super._();

  factory _$OtpDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpDtoImplFromJson(json);

  @override
  @JsonKey(name: 'user_id', defaultValue: '')
  final String userId;
  @override
  final String otp;

  @override
  String toString() {
    return 'OtpDto(userId: $userId, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpDtoImplCopyWith<_$OtpDtoImpl> get copyWith =>
      __$$OtpDtoImplCopyWithImpl<_$OtpDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpDtoImplToJson(
      this,
    );
  }
}

abstract class _OtpDto extends OtpDto {
  factory _OtpDto(
      {@JsonKey(name: 'user_id', defaultValue: '') required final String userId,
      required final String otp}) = _$OtpDtoImpl;
  _OtpDto._() : super._();

  factory _OtpDto.fromJson(Map<String, dynamic> json) = _$OtpDtoImpl.fromJson;

  @override
  @JsonKey(name: 'user_id', defaultValue: '')
  String get userId;
  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$OtpDtoImplCopyWith<_$OtpDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
