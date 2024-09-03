// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MobileNumber mobileNumber) initializeMobileNumber,
    required TResult Function(String otp) updateOtp,
    required TResult Function() resendOtp,
    required TResult Function() submitOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult? Function(String otp)? updateOtp,
    TResult? Function()? resendOtp,
    TResult? Function()? submitOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult Function(String otp)? updateOtp,
    TResult Function()? resendOtp,
    TResult Function()? submitOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeMobileNumber value)
        initializeMobileNumber,
    required TResult Function(_UpdateOtp value) updateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SubmitOtp value) submitOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult? Function(_UpdateOtp value)? updateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SubmitOtp value)? submitOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult Function(_UpdateOtp value)? updateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEventCopyWith<$Res> {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) then) =
      _$OtpEventCopyWithImpl<$Res, OtpEvent>;
}

/// @nodoc
class _$OtpEventCopyWithImpl<$Res, $Val extends OtpEvent>
    implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeMobileNumberImplCopyWith<$Res> {
  factory _$$InitializeMobileNumberImplCopyWith(
          _$InitializeMobileNumberImpl value,
          $Res Function(_$InitializeMobileNumberImpl) then) =
      __$$InitializeMobileNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileNumber mobileNumber});
}

/// @nodoc
class __$$InitializeMobileNumberImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$InitializeMobileNumberImpl>
    implements _$$InitializeMobileNumberImplCopyWith<$Res> {
  __$$InitializeMobileNumberImplCopyWithImpl(
      _$InitializeMobileNumberImpl _value,
      $Res Function(_$InitializeMobileNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
  }) {
    return _then(_$InitializeMobileNumberImpl(
      null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
    ));
  }
}

/// @nodoc

class _$InitializeMobileNumberImpl implements _InitializeMobileNumber {
  const _$InitializeMobileNumberImpl(this.mobileNumber);

  @override
  final MobileNumber mobileNumber;

  @override
  String toString() {
    return 'OtpEvent.initializeMobileNumber(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeMobileNumberImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeMobileNumberImplCopyWith<_$InitializeMobileNumberImpl>
      get copyWith => __$$InitializeMobileNumberImplCopyWithImpl<
          _$InitializeMobileNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MobileNumber mobileNumber) initializeMobileNumber,
    required TResult Function(String otp) updateOtp,
    required TResult Function() resendOtp,
    required TResult Function() submitOtp,
  }) {
    return initializeMobileNumber(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult? Function(String otp)? updateOtp,
    TResult? Function()? resendOtp,
    TResult? Function()? submitOtp,
  }) {
    return initializeMobileNumber?.call(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult Function(String otp)? updateOtp,
    TResult Function()? resendOtp,
    TResult Function()? submitOtp,
    required TResult orElse(),
  }) {
    if (initializeMobileNumber != null) {
      return initializeMobileNumber(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeMobileNumber value)
        initializeMobileNumber,
    required TResult Function(_UpdateOtp value) updateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SubmitOtp value) submitOtp,
  }) {
    return initializeMobileNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult? Function(_UpdateOtp value)? updateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SubmitOtp value)? submitOtp,
  }) {
    return initializeMobileNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult Function(_UpdateOtp value)? updateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) {
    if (initializeMobileNumber != null) {
      return initializeMobileNumber(this);
    }
    return orElse();
  }
}

abstract class _InitializeMobileNumber implements OtpEvent {
  const factory _InitializeMobileNumber(final MobileNumber mobileNumber) =
      _$InitializeMobileNumberImpl;

  MobileNumber get mobileNumber;
  @JsonKey(ignore: true)
  _$$InitializeMobileNumberImplCopyWith<_$InitializeMobileNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOtpImplCopyWith<$Res> {
  factory _$$UpdateOtpImplCopyWith(
          _$UpdateOtpImpl value, $Res Function(_$UpdateOtpImpl) then) =
      __$$UpdateOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$UpdateOtpImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$UpdateOtpImpl>
    implements _$$UpdateOtpImplCopyWith<$Res> {
  __$$UpdateOtpImplCopyWithImpl(
      _$UpdateOtpImpl _value, $Res Function(_$UpdateOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$UpdateOtpImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateOtpImpl implements _UpdateOtp {
  const _$UpdateOtpImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'OtpEvent.updateOtp(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOtpImplCopyWith<_$UpdateOtpImpl> get copyWith =>
      __$$UpdateOtpImplCopyWithImpl<_$UpdateOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MobileNumber mobileNumber) initializeMobileNumber,
    required TResult Function(String otp) updateOtp,
    required TResult Function() resendOtp,
    required TResult Function() submitOtp,
  }) {
    return updateOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult? Function(String otp)? updateOtp,
    TResult? Function()? resendOtp,
    TResult? Function()? submitOtp,
  }) {
    return updateOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult Function(String otp)? updateOtp,
    TResult Function()? resendOtp,
    TResult Function()? submitOtp,
    required TResult orElse(),
  }) {
    if (updateOtp != null) {
      return updateOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeMobileNumber value)
        initializeMobileNumber,
    required TResult Function(_UpdateOtp value) updateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SubmitOtp value) submitOtp,
  }) {
    return updateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult? Function(_UpdateOtp value)? updateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SubmitOtp value)? submitOtp,
  }) {
    return updateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult Function(_UpdateOtp value)? updateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) {
    if (updateOtp != null) {
      return updateOtp(this);
    }
    return orElse();
  }
}

abstract class _UpdateOtp implements OtpEvent {
  const factory _UpdateOtp(final String otp) = _$UpdateOtpImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$UpdateOtpImplCopyWith<_$UpdateOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendOtpImpl implements _ResendOtp {
  const _$ResendOtpImpl();

  @override
  String toString() {
    return 'OtpEvent.resendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MobileNumber mobileNumber) initializeMobileNumber,
    required TResult Function(String otp) updateOtp,
    required TResult Function() resendOtp,
    required TResult Function() submitOtp,
  }) {
    return resendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult? Function(String otp)? updateOtp,
    TResult? Function()? resendOtp,
    TResult? Function()? submitOtp,
  }) {
    return resendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult Function(String otp)? updateOtp,
    TResult Function()? resendOtp,
    TResult Function()? submitOtp,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeMobileNumber value)
        initializeMobileNumber,
    required TResult Function(_UpdateOtp value) updateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SubmitOtp value) submitOtp,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult? Function(_UpdateOtp value)? updateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SubmitOtp value)? submitOtp,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult Function(_UpdateOtp value)? updateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements OtpEvent {
  const factory _ResendOtp() = _$ResendOtpImpl;
}

/// @nodoc
abstract class _$$SubmitOtpImplCopyWith<$Res> {
  factory _$$SubmitOtpImplCopyWith(
          _$SubmitOtpImpl value, $Res Function(_$SubmitOtpImpl) then) =
      __$$SubmitOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitOtpImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$SubmitOtpImpl>
    implements _$$SubmitOtpImplCopyWith<$Res> {
  __$$SubmitOtpImplCopyWithImpl(
      _$SubmitOtpImpl _value, $Res Function(_$SubmitOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitOtpImpl implements _SubmitOtp {
  const _$SubmitOtpImpl();

  @override
  String toString() {
    return 'OtpEvent.submitOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MobileNumber mobileNumber) initializeMobileNumber,
    required TResult Function(String otp) updateOtp,
    required TResult Function() resendOtp,
    required TResult Function() submitOtp,
  }) {
    return submitOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult? Function(String otp)? updateOtp,
    TResult? Function()? resendOtp,
    TResult? Function()? submitOtp,
  }) {
    return submitOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MobileNumber mobileNumber)? initializeMobileNumber,
    TResult Function(String otp)? updateOtp,
    TResult Function()? resendOtp,
    TResult Function()? submitOtp,
    required TResult orElse(),
  }) {
    if (submitOtp != null) {
      return submitOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeMobileNumber value)
        initializeMobileNumber,
    required TResult Function(_UpdateOtp value) updateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SubmitOtp value) submitOtp,
  }) {
    return submitOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult? Function(_UpdateOtp value)? updateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SubmitOtp value)? submitOtp,
  }) {
    return submitOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeMobileNumber value)? initializeMobileNumber,
    TResult Function(_UpdateOtp value)? updateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SubmitOtp value)? submitOtp,
    required TResult orElse(),
  }) {
    if (submitOtp != null) {
      return submitOtp(this);
    }
    return orElse();
  }
}

abstract class _SubmitOtp implements OtpEvent {
  const factory _SubmitOtp() = _$SubmitOtpImpl;
}

/// @nodoc
mixin _$OtpState {
  MobileNumber get mobileNumber => throw _privateConstructorUsedError;
  OTP get otp => throw _privateConstructorUsedError;
  Auth get auth => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get resentOtpLoading => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpStateCopyWith<OtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
  @useResult
  $Res call(
      {MobileNumber mobileNumber,
      OTP otp,
      Auth auth,
      bool isSubmitting,
      bool resentOtpLoading,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});

  $AuthCopyWith<$Res> get auth;
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

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
    Object? isSubmitting = null,
    Object? resentOtpLoading = null,
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
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      resentOtpLoading: null == resentOtpLoading
          ? _value.resentOtpLoading
          : resentOtpLoading // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OtpStateImplCopyWith<$Res>
    implements $OtpStateCopyWith<$Res> {
  factory _$$OtpStateImplCopyWith(
          _$OtpStateImpl value, $Res Function(_$OtpStateImpl) then) =
      __$$OtpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MobileNumber mobileNumber,
      OTP otp,
      Auth auth,
      bool isSubmitting,
      bool resentOtpLoading,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});

  @override
  $AuthCopyWith<$Res> get auth;
}

/// @nodoc
class __$$OtpStateImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpStateImpl>
    implements _$$OtpStateImplCopyWith<$Res> {
  __$$OtpStateImplCopyWithImpl(
      _$OtpStateImpl _value, $Res Function(_$OtpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? otp = null,
    Object? auth = null,
    Object? isSubmitting = null,
    Object? resentOtpLoading = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$OtpStateImpl(
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
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      resentOtpLoading: null == resentOtpLoading
          ? _value.resentOtpLoading
          : resentOtpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$OtpStateImpl extends _OtpState {
  const _$OtpStateImpl(
      {required this.mobileNumber,
      required this.otp,
      required this.auth,
      required this.isSubmitting,
      required this.resentOtpLoading,
      required this.authFailureOrSuccessOption})
      : super._();

  @override
  final MobileNumber mobileNumber;
  @override
  final OTP otp;
  @override
  final Auth auth;
  @override
  final bool isSubmitting;
  @override
  final bool resentOtpLoading;
  @override
  final Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'OtpState(mobileNumber: $mobileNumber, otp: $otp, auth: $auth, isSubmitting: $isSubmitting, resentOtpLoading: $resentOtpLoading, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpStateImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.resentOtpLoading, resentOtpLoading) ||
                other.resentOtpLoading == resentOtpLoading) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, otp, auth,
      isSubmitting, resentOtpLoading, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      __$$OtpStateImplCopyWithImpl<_$OtpStateImpl>(this, _$identity);
}

abstract class _OtpState extends OtpState {
  const factory _OtpState(
      {required final MobileNumber mobileNumber,
      required final OTP otp,
      required final Auth auth,
      required final bool isSubmitting,
      required final bool resentOtpLoading,
      required final Option<Either<ApiFailure, dynamic>>
          authFailureOrSuccessOption}) = _$OtpStateImpl;
  const _OtpState._() : super._();

  @override
  MobileNumber get mobileNumber;
  @override
  OTP get otp;
  @override
  Auth get auth;
  @override
  bool get isSubmitting;
  @override
  bool get resentOtpLoading;
  @override
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
