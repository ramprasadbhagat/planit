// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentUserDto _$CurrentUserDtoFromJson(Map<String, dynamic> json) {
  return _CurrentUserDto.fromJson(json);
}

/// @nodoc
mixin _$CurrentUserDto {
  @JsonKey(defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'mobile_number')
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'email')
  String get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUserDtoCopyWith<CurrentUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserDtoCopyWith<$Res> {
  factory $CurrentUserDtoCopyWith(
          CurrentUserDto value, $Res Function(CurrentUserDto) then) =
      _$CurrentUserDtoCopyWithImpl<$Res, CurrentUserDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String firstName,
      @JsonKey(defaultValue: '') String lastName,
      @JsonKey(defaultValue: '') String fullName,
      @JsonKey(defaultValue: '', name: 'mobile_number') String mobileNumber,
      @JsonKey(defaultValue: '', name: 'email') String emailAddress,
      @JsonKey(defaultValue: '') String profilePicture});
}

/// @nodoc
class _$CurrentUserDtoCopyWithImpl<$Res, $Val extends CurrentUserDto>
    implements $CurrentUserDtoCopyWith<$Res> {
  _$CurrentUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
    Object? mobileNumber = null,
    Object? emailAddress = null,
    Object? profilePicture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUserDtoImplCopyWith<$Res>
    implements $CurrentUserDtoCopyWith<$Res> {
  factory _$$CurrentUserDtoImplCopyWith(_$CurrentUserDtoImpl value,
          $Res Function(_$CurrentUserDtoImpl) then) =
      __$$CurrentUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String firstName,
      @JsonKey(defaultValue: '') String lastName,
      @JsonKey(defaultValue: '') String fullName,
      @JsonKey(defaultValue: '', name: 'mobile_number') String mobileNumber,
      @JsonKey(defaultValue: '', name: 'email') String emailAddress,
      @JsonKey(defaultValue: '') String profilePicture});
}

/// @nodoc
class __$$CurrentUserDtoImplCopyWithImpl<$Res>
    extends _$CurrentUserDtoCopyWithImpl<$Res, _$CurrentUserDtoImpl>
    implements _$$CurrentUserDtoImplCopyWith<$Res> {
  __$$CurrentUserDtoImplCopyWithImpl(
      _$CurrentUserDtoImpl _value, $Res Function(_$CurrentUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
    Object? mobileNumber = null,
    Object? emailAddress = null,
    Object? profilePicture = null,
  }) {
    return _then(_$CurrentUserDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUserDtoImpl extends _CurrentUserDto {
  const _$CurrentUserDtoImpl(
      {@JsonKey(defaultValue: '') required this.id,
      @JsonKey(defaultValue: '') required this.firstName,
      @JsonKey(defaultValue: '') required this.lastName,
      @JsonKey(defaultValue: '') required this.fullName,
      @JsonKey(defaultValue: '', name: 'mobile_number')
      required this.mobileNumber,
      @JsonKey(defaultValue: '', name: 'email') required this.emailAddress,
      @JsonKey(defaultValue: '') required this.profilePicture})
      : super._();

  factory _$CurrentUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUserDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String firstName;
  @override
  @JsonKey(defaultValue: '')
  final String lastName;
  @override
  @JsonKey(defaultValue: '')
  final String fullName;
  @override
  @JsonKey(defaultValue: '', name: 'mobile_number')
  final String mobileNumber;
  @override
  @JsonKey(defaultValue: '', name: 'email')
  final String emailAddress;
  @override
  @JsonKey(defaultValue: '')
  final String profilePicture;

  @override
  String toString() {
    return 'CurrentUserDto(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName, mobileNumber: $mobileNumber, emailAddress: $emailAddress, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      fullName, mobileNumber, emailAddress, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserDtoImplCopyWith<_$CurrentUserDtoImpl> get copyWith =>
      __$$CurrentUserDtoImplCopyWithImpl<_$CurrentUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUserDtoImplToJson(
      this,
    );
  }
}

abstract class _CurrentUserDto extends CurrentUserDto {
  const factory _CurrentUserDto(
          {@JsonKey(defaultValue: '') required final String id,
          @JsonKey(defaultValue: '') required final String firstName,
          @JsonKey(defaultValue: '') required final String lastName,
          @JsonKey(defaultValue: '') required final String fullName,
          @JsonKey(defaultValue: '', name: 'mobile_number')
          required final String mobileNumber,
          @JsonKey(defaultValue: '', name: 'email')
          required final String emailAddress,
          @JsonKey(defaultValue: '') required final String profilePicture}) =
      _$CurrentUserDtoImpl;
  const _CurrentUserDto._() : super._();

  factory _CurrentUserDto.fromJson(Map<String, dynamic> json) =
      _$CurrentUserDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get firstName;
  @override
  @JsonKey(defaultValue: '')
  String get lastName;
  @override
  @JsonKey(defaultValue: '')
  String get fullName;
  @override
  @JsonKey(defaultValue: '', name: 'mobile_number')
  String get mobileNumber;
  @override
  @JsonKey(defaultValue: '', name: 'email')
  String get emailAddress;
  @override
  @JsonKey(defaultValue: '')
  String get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUserDtoImplCopyWith<_$CurrentUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
