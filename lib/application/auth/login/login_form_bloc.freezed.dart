// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileStr) updateMobileNumber,
    required TResult Function() sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileStr)? updateMobileNumber,
    TResult? Function()? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileStr)? updateMobileNumber,
    TResult Function()? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateMobileNumber value) updateMobileNumber,
    required TResult Function(_SendOtp value) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateMobileNumber value)? updateMobileNumber,
    TResult? Function(_SendOtp value)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateMobileNumber value)? updateMobileNumber,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res, LoginFormEvent>;
}

/// @nodoc
class _$LoginFormEventCopyWithImpl<$Res, $Val extends LoginFormEvent>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateMobileNumberImplCopyWith<$Res> {
  factory _$$UpdateMobileNumberImplCopyWith(_$UpdateMobileNumberImpl value,
          $Res Function(_$UpdateMobileNumberImpl) then) =
      __$$UpdateMobileNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileStr});
}

/// @nodoc
class __$$UpdateMobileNumberImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$UpdateMobileNumberImpl>
    implements _$$UpdateMobileNumberImplCopyWith<$Res> {
  __$$UpdateMobileNumberImplCopyWithImpl(_$UpdateMobileNumberImpl _value,
      $Res Function(_$UpdateMobileNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileStr = null,
  }) {
    return _then(_$UpdateMobileNumberImpl(
      null == mobileStr
          ? _value.mobileStr
          : mobileStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateMobileNumberImpl implements _UpdateMobileNumber {
  const _$UpdateMobileNumberImpl(this.mobileStr);

  @override
  final String mobileStr;

  @override
  String toString() {
    return 'LoginFormEvent.updateMobileNumber(mobileStr: $mobileStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMobileNumberImpl &&
            (identical(other.mobileStr, mobileStr) ||
                other.mobileStr == mobileStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMobileNumberImplCopyWith<_$UpdateMobileNumberImpl> get copyWith =>
      __$$UpdateMobileNumberImplCopyWithImpl<_$UpdateMobileNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileStr) updateMobileNumber,
    required TResult Function() sendOtp,
  }) {
    return updateMobileNumber(mobileStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileStr)? updateMobileNumber,
    TResult? Function()? sendOtp,
  }) {
    return updateMobileNumber?.call(mobileStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileStr)? updateMobileNumber,
    TResult Function()? sendOtp,
    required TResult orElse(),
  }) {
    if (updateMobileNumber != null) {
      return updateMobileNumber(mobileStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateMobileNumber value) updateMobileNumber,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return updateMobileNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateMobileNumber value)? updateMobileNumber,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return updateMobileNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateMobileNumber value)? updateMobileNumber,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (updateMobileNumber != null) {
      return updateMobileNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdateMobileNumber implements LoginFormEvent {
  const factory _UpdateMobileNumber(final String mobileStr) =
      _$UpdateMobileNumberImpl;

  String get mobileStr;
  @JsonKey(ignore: true)
  _$$UpdateMobileNumberImplCopyWith<_$UpdateMobileNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl();

  @override
  String toString() {
    return 'LoginFormEvent.sendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileStr) updateMobileNumber,
    required TResult Function() sendOtp,
  }) {
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileStr)? updateMobileNumber,
    TResult? Function()? sendOtp,
  }) {
    return sendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileStr)? updateMobileNumber,
    TResult Function()? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateMobileNumber value) updateMobileNumber,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateMobileNumber value)? updateMobileNumber,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateMobileNumber value)? updateMobileNumber,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements LoginFormEvent {
  const factory _SendOtp() = _$SendOtpImpl;
}

/// @nodoc
mixin _$LoginFormState {
  MobileNumber get mobileNumber => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res, LoginFormState>;
  @useResult
  $Res call(
      {MobileNumber mobileNumber,
      bool isSubmitting,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res, $Val extends LoginFormState>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormStateImplCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$LoginFormStateImplCopyWith(_$LoginFormStateImpl value,
          $Res Function(_$LoginFormStateImpl) then) =
      __$$LoginFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MobileNumber mobileNumber,
      bool isSubmitting,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$LoginFormStateImplCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res, _$LoginFormStateImpl>
    implements _$$LoginFormStateImplCopyWith<$Res> {
  __$$LoginFormStateImplCopyWithImpl(
      _$LoginFormStateImpl _value, $Res Function(_$LoginFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$LoginFormStateImpl(
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$LoginFormStateImpl extends _LoginFormState {
  const _$LoginFormStateImpl(
      {required this.mobileNumber,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption})
      : super._();

  @override
  final MobileNumber mobileNumber;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginFormState(mobileNumber: $mobileNumber, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormStateImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, mobileNumber, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      __$$LoginFormStateImplCopyWithImpl<_$LoginFormStateImpl>(
          this, _$identity);
}

abstract class _LoginFormState extends LoginFormState {
  const factory _LoginFormState(
      {required final MobileNumber mobileNumber,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, dynamic>>
          authFailureOrSuccessOption}) = _$LoginFormStateImpl;
  const _LoginFormState._() : super._();

  @override
  MobileNumber get mobileNumber;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
