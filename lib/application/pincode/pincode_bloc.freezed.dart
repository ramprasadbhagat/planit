// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PincodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String pincode) checkPincode,
    required TResult Function(String pincode) savePincode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String pincode)? checkPincode,
    TResult? Function(String pincode)? savePincode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String pincode)? checkPincode,
    TResult Function(String pincode)? savePincode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PincodeCheck value) checkPincode,
    required TResult Function(_PincodeSave value) savePincode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PincodeCheck value)? checkPincode,
    TResult? Function(_PincodeSave value)? savePincode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PincodeCheck value)? checkPincode,
    TResult Function(_PincodeSave value)? savePincode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeEventCopyWith<$Res> {
  factory $PincodeEventCopyWith(
          PincodeEvent value, $Res Function(PincodeEvent) then) =
      _$PincodeEventCopyWithImpl<$Res, PincodeEvent>;
}

/// @nodoc
class _$PincodeEventCopyWithImpl<$Res, $Val extends PincodeEvent>
    implements $PincodeEventCopyWith<$Res> {
  _$PincodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$PincodeEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'PincodeEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String pincode) checkPincode,
    required TResult Function(String pincode) savePincode,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String pincode)? checkPincode,
    TResult? Function(String pincode)? savePincode,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String pincode)? checkPincode,
    TResult Function(String pincode)? savePincode,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PincodeCheck value) checkPincode,
    required TResult Function(_PincodeSave value) savePincode,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PincodeCheck value)? checkPincode,
    TResult? Function(_PincodeSave value)? savePincode,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PincodeCheck value)? checkPincode,
    TResult Function(_PincodeSave value)? savePincode,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PincodeEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$PincodeCheckImplCopyWith<$Res> {
  factory _$$PincodeCheckImplCopyWith(
          _$PincodeCheckImpl value, $Res Function(_$PincodeCheckImpl) then) =
      __$$PincodeCheckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class __$$PincodeCheckImplCopyWithImpl<$Res>
    extends _$PincodeEventCopyWithImpl<$Res, _$PincodeCheckImpl>
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
    return 'PincodeEvent.checkPincode(pincode: $pincode)';
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String pincode) checkPincode,
    required TResult Function(String pincode) savePincode,
  }) {
    return checkPincode(pincode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String pincode)? checkPincode,
    TResult? Function(String pincode)? savePincode,
  }) {
    return checkPincode?.call(pincode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String pincode)? checkPincode,
    TResult Function(String pincode)? savePincode,
    required TResult orElse(),
  }) {
    if (checkPincode != null) {
      return checkPincode(pincode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PincodeCheck value) checkPincode,
    required TResult Function(_PincodeSave value) savePincode,
  }) {
    return checkPincode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PincodeCheck value)? checkPincode,
    TResult? Function(_PincodeSave value)? savePincode,
  }) {
    return checkPincode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PincodeCheck value)? checkPincode,
    TResult Function(_PincodeSave value)? savePincode,
    required TResult orElse(),
  }) {
    if (checkPincode != null) {
      return checkPincode(this);
    }
    return orElse();
  }
}

abstract class _PincodeCheck implements PincodeEvent {
  const factory _PincodeCheck({required final String pincode}) =
      _$PincodeCheckImpl;

  String get pincode;
  @JsonKey(ignore: true)
  _$$PincodeCheckImplCopyWith<_$PincodeCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PincodeSaveImplCopyWith<$Res> {
  factory _$$PincodeSaveImplCopyWith(
          _$PincodeSaveImpl value, $Res Function(_$PincodeSaveImpl) then) =
      __$$PincodeSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class __$$PincodeSaveImplCopyWithImpl<$Res>
    extends _$PincodeEventCopyWithImpl<$Res, _$PincodeSaveImpl>
    implements _$$PincodeSaveImplCopyWith<$Res> {
  __$$PincodeSaveImplCopyWithImpl(
      _$PincodeSaveImpl _value, $Res Function(_$PincodeSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_$PincodeSaveImpl(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PincodeSaveImpl implements _PincodeSave {
  const _$PincodeSaveImpl({required this.pincode});

  @override
  final String pincode;

  @override
  String toString() {
    return 'PincodeEvent.savePincode(pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeSaveImpl &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeSaveImplCopyWith<_$PincodeSaveImpl> get copyWith =>
      __$$PincodeSaveImplCopyWithImpl<_$PincodeSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String pincode) checkPincode,
    required TResult Function(String pincode) savePincode,
  }) {
    return savePincode(pincode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String pincode)? checkPincode,
    TResult? Function(String pincode)? savePincode,
  }) {
    return savePincode?.call(pincode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String pincode)? checkPincode,
    TResult Function(String pincode)? savePincode,
    required TResult orElse(),
  }) {
    if (savePincode != null) {
      return savePincode(pincode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PincodeCheck value) checkPincode,
    required TResult Function(_PincodeSave value) savePincode,
  }) {
    return savePincode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PincodeCheck value)? checkPincode,
    TResult? Function(_PincodeSave value)? savePincode,
  }) {
    return savePincode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PincodeCheck value)? checkPincode,
    TResult Function(_PincodeSave value)? savePincode,
    required TResult orElse(),
  }) {
    if (savePincode != null) {
      return savePincode(this);
    }
    return orElse();
  }
}

abstract class _PincodeSave implements PincodeEvent {
  const factory _PincodeSave({required final String pincode}) =
      _$PincodeSaveImpl;

  String get pincode;
  @JsonKey(ignore: true)
  _$$PincodeSaveImplCopyWith<_$PincodeSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PincodeState {
  String get pincode => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PincodeStateCopyWith<PincodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeStateCopyWith<$Res> {
  factory $PincodeStateCopyWith(
          PincodeState value, $Res Function(PincodeState) then) =
      _$PincodeStateCopyWithImpl<$Res, PincodeState>;
  @useResult
  $Res call(
      {String pincode,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching});
}

/// @nodoc
class _$PincodeStateCopyWithImpl<$Res, $Val extends PincodeState>
    implements $PincodeStateCopyWith<$Res> {
  _$PincodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
  }) {
    return _then(_value.copyWith(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PincodeStateImplCopyWith<$Res>
    implements $PincodeStateCopyWith<$Res> {
  factory _$$PincodeStateImplCopyWith(
          _$PincodeStateImpl value, $Res Function(_$PincodeStateImpl) then) =
      __$$PincodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pincode,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching});
}

/// @nodoc
class __$$PincodeStateImplCopyWithImpl<$Res>
    extends _$PincodeStateCopyWithImpl<$Res, _$PincodeStateImpl>
    implements _$$PincodeStateImplCopyWith<$Res> {
  __$$PincodeStateImplCopyWithImpl(
      _$PincodeStateImpl _value, $Res Function(_$PincodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
  }) {
    return _then(_$PincodeStateImpl(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PincodeStateImpl extends _PincodeState {
  const _$PincodeStateImpl(
      {required this.pincode,
      required this.apiFailureOrSuccessOption,
      required this.isFetching})
      : super._();

  @override
  final String pincode;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;

  @override
  String toString() {
    return 'PincodeState(pincode: $pincode, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeStateImpl &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pincode, apiFailureOrSuccessOption, isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeStateImplCopyWith<_$PincodeStateImpl> get copyWith =>
      __$$PincodeStateImplCopyWithImpl<_$PincodeStateImpl>(this, _$identity);
}

abstract class _PincodeState extends PincodeState {
  const factory _PincodeState(
      {required final String pincode,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching}) = _$PincodeStateImpl;
  const _PincodeState._() : super._();

  @override
  String get pincode;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$PincodeStateImplCopyWith<_$PincodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
