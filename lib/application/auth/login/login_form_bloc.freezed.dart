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
    required TResult Function(String mobileStr) mobileNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() initiateLogin,
    required TResult Function() verifyOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileStr)? mobileNumberChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? initiateLogin,
    TResult? Function()? verifyOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileStr)? mobileNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? initiateLogin,
    TResult Function()? verifyOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_OTPChanged value) otpChanged,
    required TResult Function(_InitiateLogin value) initiateLogin,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult? Function(_OTPChanged value)? otpChanged,
    TResult? Function(_InitiateLogin value)? initiateLogin,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_OTPChanged value)? otpChanged,
    TResult Function(_InitiateLogin value)? initiateLogin,
    TResult Function(_VerifyOTP value)? verifyOTP,
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
abstract class _$$MobileNumberChangedImplCopyWith<$Res> {
  factory _$$MobileNumberChangedImplCopyWith(_$MobileNumberChangedImpl value,
          $Res Function(_$MobileNumberChangedImpl) then) =
      __$$MobileNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileStr});
}

/// @nodoc
class __$$MobileNumberChangedImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$MobileNumberChangedImpl>
    implements _$$MobileNumberChangedImplCopyWith<$Res> {
  __$$MobileNumberChangedImplCopyWithImpl(_$MobileNumberChangedImpl _value,
      $Res Function(_$MobileNumberChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileStr = null,
  }) {
    return _then(_$MobileNumberChangedImpl(
      null == mobileStr
          ? _value.mobileStr
          : mobileStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MobileNumberChangedImpl implements _MobileNumberChanged {
  const _$MobileNumberChangedImpl(this.mobileStr);

  @override
  final String mobileStr;

  @override
  String toString() {
    return 'LoginFormEvent.mobileNumberChanged(mobileStr: $mobileStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileNumberChangedImpl &&
            (identical(other.mobileStr, mobileStr) ||
                other.mobileStr == mobileStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileNumberChangedImplCopyWith<_$MobileNumberChangedImpl> get copyWith =>
      __$$MobileNumberChangedImplCopyWithImpl<_$MobileNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileStr) mobileNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() initiateLogin,
    required TResult Function() verifyOTP,
  }) {
    return mobileNumberChanged(mobileStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileStr)? mobileNumberChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? initiateLogin,
    TResult? Function()? verifyOTP,
  }) {
    return mobileNumberChanged?.call(mobileStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileStr)? mobileNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? initiateLogin,
    TResult Function()? verifyOTP,
    required TResult orElse(),
  }) {
    if (mobileNumberChanged != null) {
      return mobileNumberChanged(mobileStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_OTPChanged value) otpChanged,
    required TResult Function(_InitiateLogin value) initiateLogin,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) {
    return mobileNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult? Function(_OTPChanged value)? otpChanged,
    TResult? Function(_InitiateLogin value)? initiateLogin,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) {
    return mobileNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_OTPChanged value)? otpChanged,
    TResult Function(_InitiateLogin value)? initiateLogin,
    TResult Function(_VerifyOTP value)? verifyOTP,
    required TResult orElse(),
  }) {
    if (mobileNumberChanged != null) {
      return mobileNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _MobileNumberChanged implements LoginFormEvent {
  const factory _MobileNumberChanged(final String mobileStr) =
      _$MobileNumberChangedImpl;

  String get mobileStr;
  @JsonKey(ignore: true)
  _$$MobileNumberChangedImplCopyWith<_$MobileNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OTPChangedImplCopyWith<$Res> {
  factory _$$OTPChangedImplCopyWith(
          _$OTPChangedImpl value, $Res Function(_$OTPChangedImpl) then) =
      __$$OTPChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpStr});
}

/// @nodoc
class __$$OTPChangedImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$OTPChangedImpl>
    implements _$$OTPChangedImplCopyWith<$Res> {
  __$$OTPChangedImplCopyWithImpl(
      _$OTPChangedImpl _value, $Res Function(_$OTPChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpStr = null,
  }) {
    return _then(_$OTPChangedImpl(
      null == otpStr
          ? _value.otpStr
          : otpStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OTPChangedImpl implements _OTPChanged {
  const _$OTPChangedImpl(this.otpStr);

  @override
  final String otpStr;

  @override
  String toString() {
    return 'LoginFormEvent.otpChanged(otpStr: $otpStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPChangedImpl &&
            (identical(other.otpStr, otpStr) || other.otpStr == otpStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPChangedImplCopyWith<_$OTPChangedImpl> get copyWith =>
      __$$OTPChangedImplCopyWithImpl<_$OTPChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileStr) mobileNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() initiateLogin,
    required TResult Function() verifyOTP,
  }) {
    return otpChanged(otpStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileStr)? mobileNumberChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? initiateLogin,
    TResult? Function()? verifyOTP,
  }) {
    return otpChanged?.call(otpStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileStr)? mobileNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? initiateLogin,
    TResult Function()? verifyOTP,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otpStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_OTPChanged value) otpChanged,
    required TResult Function(_InitiateLogin value) initiateLogin,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult? Function(_OTPChanged value)? otpChanged,
    TResult? Function(_InitiateLogin value)? initiateLogin,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_OTPChanged value)? otpChanged,
    TResult Function(_InitiateLogin value)? initiateLogin,
    TResult Function(_VerifyOTP value)? verifyOTP,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OTPChanged implements LoginFormEvent {
  const factory _OTPChanged(final String otpStr) = _$OTPChangedImpl;

  String get otpStr;
  @JsonKey(ignore: true)
  _$$OTPChangedImplCopyWith<_$OTPChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitiateLoginImplCopyWith<$Res> {
  factory _$$InitiateLoginImplCopyWith(
          _$InitiateLoginImpl value, $Res Function(_$InitiateLoginImpl) then) =
      __$$InitiateLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitiateLoginImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$InitiateLoginImpl>
    implements _$$InitiateLoginImplCopyWith<$Res> {
  __$$InitiateLoginImplCopyWithImpl(
      _$InitiateLoginImpl _value, $Res Function(_$InitiateLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitiateLoginImpl implements _InitiateLogin {
  const _$InitiateLoginImpl();

  @override
  String toString() {
    return 'LoginFormEvent.initiateLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitiateLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileStr) mobileNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() initiateLogin,
    required TResult Function() verifyOTP,
  }) {
    return initiateLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileStr)? mobileNumberChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? initiateLogin,
    TResult? Function()? verifyOTP,
  }) {
    return initiateLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileStr)? mobileNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? initiateLogin,
    TResult Function()? verifyOTP,
    required TResult orElse(),
  }) {
    if (initiateLogin != null) {
      return initiateLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_OTPChanged value) otpChanged,
    required TResult Function(_InitiateLogin value) initiateLogin,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) {
    return initiateLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult? Function(_OTPChanged value)? otpChanged,
    TResult? Function(_InitiateLogin value)? initiateLogin,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) {
    return initiateLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_OTPChanged value)? otpChanged,
    TResult Function(_InitiateLogin value)? initiateLogin,
    TResult Function(_VerifyOTP value)? verifyOTP,
    required TResult orElse(),
  }) {
    if (initiateLogin != null) {
      return initiateLogin(this);
    }
    return orElse();
  }
}

abstract class _InitiateLogin implements LoginFormEvent {
  const factory _InitiateLogin() = _$InitiateLoginImpl;
}

/// @nodoc
abstract class _$$VerifyOTPImplCopyWith<$Res> {
  factory _$$VerifyOTPImplCopyWith(
          _$VerifyOTPImpl value, $Res Function(_$VerifyOTPImpl) then) =
      __$$VerifyOTPImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOTPImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$VerifyOTPImpl>
    implements _$$VerifyOTPImplCopyWith<$Res> {
  __$$VerifyOTPImplCopyWithImpl(
      _$VerifyOTPImpl _value, $Res Function(_$VerifyOTPImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyOTPImpl implements _VerifyOTP {
  const _$VerifyOTPImpl();

  @override
  String toString() {
    return 'LoginFormEvent.verifyOTP()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyOTPImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileStr) mobileNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() initiateLogin,
    required TResult Function() verifyOTP,
  }) {
    return verifyOTP();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileStr)? mobileNumberChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? initiateLogin,
    TResult? Function()? verifyOTP,
  }) {
    return verifyOTP?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileStr)? mobileNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? initiateLogin,
    TResult Function()? verifyOTP,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_OTPChanged value) otpChanged,
    required TResult Function(_InitiateLogin value) initiateLogin,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult? Function(_OTPChanged value)? otpChanged,
    TResult? Function(_InitiateLogin value)? initiateLogin,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_OTPChanged value)? otpChanged,
    TResult Function(_InitiateLogin value)? initiateLogin,
    TResult Function(_VerifyOTP value)? verifyOTP,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTP implements LoginFormEvent {
  const factory _VerifyOTP() = _$VerifyOTPImpl;
}

/// @nodoc
mixin _$LoginFormState {
  MobileNumber get mobileNumber => throw _privateConstructorUsedError;
  OTP get otp => throw _privateConstructorUsedError;
  Auth get auth => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
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
      OTP otp,
      Auth auth,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});

  $AuthCopyWith<$Res> get auth;
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
    Object? otp = null,
    Object? auth = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP,
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res> get auth {
    return $AuthCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
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
      OTP otp,
      Auth auth,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});

  @override
  $AuthCopyWith<$Res> get auth;
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
    Object? otp = null,
    Object? auth = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$LoginFormStateImpl(
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP,
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required this.otp,
      required this.auth,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption})
      : super._();

  @override
  final MobileNumber mobileNumber;
  @override
  final OTP otp;
  @override
  final Auth auth;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginFormState(mobileNumber: $mobileNumber, otp: $otp, auth: $auth, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormStateImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, otp, auth,
      showErrorMessages, isSubmitting, authFailureOrSuccessOption);

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
      required final OTP otp,
      required final Auth auth,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, dynamic>>
          authFailureOrSuccessOption}) = _$LoginFormStateImpl;
  const _LoginFormState._() : super._();

  @override
  MobileNumber get mobileNumber;
  @override
  OTP get otp;
  @override
  Auth get auth;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
