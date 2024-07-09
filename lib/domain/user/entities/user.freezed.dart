// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentUser {
  StringValue get id => throw _privateConstructorUsedError;
  StringValue get firstName => throw _privateConstructorUsedError;
  StringValue get lastName => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  MobileNumber get mobileNumber => throw _privateConstructorUsedError;
  StringValue get profileImage => throw _privateConstructorUsedError;
  bool get isFirstLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentUserCopyWith<CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserCopyWith<$Res> {
  factory $CurrentUserCopyWith(
          CurrentUser value, $Res Function(CurrentUser) then) =
      _$CurrentUserCopyWithImpl<$Res, CurrentUser>;
  @useResult
  $Res call(
      {StringValue id,
      StringValue firstName,
      StringValue lastName,
      EmailAddress emailAddress,
      MobileNumber mobileNumber,
      StringValue profileImage,
      bool isFirstLogin});
}

/// @nodoc
class _$CurrentUserCopyWithImpl<$Res, $Val extends CurrentUser>
    implements $CurrentUserCopyWith<$Res> {
  _$CurrentUserCopyWithImpl(this._value, this._then);

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
    Object? emailAddress = null,
    Object? mobileNumber = null,
    Object? profileImage = null,
    Object? isFirstLogin = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as StringValue,
      isFirstLogin: null == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUserImplCopyWith<$Res>
    implements $CurrentUserCopyWith<$Res> {
  factory _$$CurrentUserImplCopyWith(
          _$CurrentUserImpl value, $Res Function(_$CurrentUserImpl) then) =
      __$$CurrentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue id,
      StringValue firstName,
      StringValue lastName,
      EmailAddress emailAddress,
      MobileNumber mobileNumber,
      StringValue profileImage,
      bool isFirstLogin});
}

/// @nodoc
class __$$CurrentUserImplCopyWithImpl<$Res>
    extends _$CurrentUserCopyWithImpl<$Res, _$CurrentUserImpl>
    implements _$$CurrentUserImplCopyWith<$Res> {
  __$$CurrentUserImplCopyWithImpl(
      _$CurrentUserImpl _value, $Res Function(_$CurrentUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? emailAddress = null,
    Object? mobileNumber = null,
    Object? profileImage = null,
    Object? isFirstLogin = null,
  }) {
    return _then(_$CurrentUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as StringValue,
      isFirstLogin: null == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CurrentUserImpl implements _CurrentUser {
  const _$CurrentUserImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.mobileNumber,
      required this.profileImage,
      required this.isFirstLogin});

  @override
  final StringValue id;
  @override
  final StringValue firstName;
  @override
  final StringValue lastName;
  @override
  final EmailAddress emailAddress;
  @override
  final MobileNumber mobileNumber;
  @override
  final StringValue profileImage;
  @override
  final bool isFirstLogin;

  @override
  String toString() {
    return 'CurrentUser(id: $id, firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, mobileNumber: $mobileNumber, profileImage: $profileImage, isFirstLogin: $isFirstLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.isFirstLogin, isFirstLogin) ||
                other.isFirstLogin == isFirstLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      emailAddress, mobileNumber, profileImage, isFirstLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserImplCopyWith<_$CurrentUserImpl> get copyWith =>
      __$$CurrentUserImplCopyWithImpl<_$CurrentUserImpl>(this, _$identity);
}

abstract class _CurrentUser implements CurrentUser {
  const factory _CurrentUser(
      {required final StringValue id,
      required final StringValue firstName,
      required final StringValue lastName,
      required final EmailAddress emailAddress,
      required final MobileNumber mobileNumber,
      required final StringValue profileImage,
      required final bool isFirstLogin}) = _$CurrentUserImpl;

  @override
  StringValue get id;
  @override
  StringValue get firstName;
  @override
  StringValue get lastName;
  @override
  EmailAddress get emailAddress;
  @override
  MobileNumber get mobileNumber;
  @override
  StringValue get profileImage;
  @override
  bool get isFirstLogin;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUserImplCopyWith<_$CurrentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
