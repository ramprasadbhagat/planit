// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTrackOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTrackOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTrackOrderDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTrackOrderDetails value) getTrackOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderEventCopyWith<$Res> {
  factory $TrackOrderEventCopyWith(
          TrackOrderEvent value, $Res Function(TrackOrderEvent) then) =
      _$TrackOrderEventCopyWithImpl<$Res, TrackOrderEvent>;
}

/// @nodoc
class _$TrackOrderEventCopyWithImpl<$Res, $Val extends TrackOrderEvent>
    implements $TrackOrderEventCopyWith<$Res> {
  _$TrackOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TrackOrderEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTrackOrderDetails,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTrackOrderDetails,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTrackOrderDetails,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTrackOrderDetails value) getTrackOrderDetails,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TrackOrderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetTrackOrderDetailsImplCopyWith<$Res> {
  factory _$$GetTrackOrderDetailsImplCopyWith(_$GetTrackOrderDetailsImpl value,
          $Res Function(_$GetTrackOrderDetailsImpl) then) =
      __$$GetTrackOrderDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrackOrderDetailsImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$GetTrackOrderDetailsImpl>
    implements _$$GetTrackOrderDetailsImplCopyWith<$Res> {
  __$$GetTrackOrderDetailsImplCopyWithImpl(_$GetTrackOrderDetailsImpl _value,
      $Res Function(_$GetTrackOrderDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTrackOrderDetailsImpl implements _GetTrackOrderDetails {
  const _$GetTrackOrderDetailsImpl();

  @override
  String toString() {
    return 'TrackOrderEvent.getTrackOrderDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTrackOrderDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTrackOrderDetails,
  }) {
    return getTrackOrderDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTrackOrderDetails,
  }) {
    return getTrackOrderDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTrackOrderDetails,
    required TResult orElse(),
  }) {
    if (getTrackOrderDetails != null) {
      return getTrackOrderDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTrackOrderDetails value) getTrackOrderDetails,
  }) {
    return getTrackOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
  }) {
    return getTrackOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    required TResult orElse(),
  }) {
    if (getTrackOrderDetails != null) {
      return getTrackOrderDetails(this);
    }
    return orElse();
  }
}

abstract class _GetTrackOrderDetails implements TrackOrderEvent {
  const factory _GetTrackOrderDetails() = _$GetTrackOrderDetailsImpl;
}

/// @nodoc
mixin _$TrackOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)
        $default, {
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)?
        $default, {
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)?
        $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrackOrderState value) $default, {
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrackOrderState value)? $default, {
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrackOrderState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderStateCopyWith<$Res> {
  factory $TrackOrderStateCopyWith(
          TrackOrderState value, $Res Function(TrackOrderState) then) =
      _$TrackOrderStateCopyWithImpl<$Res, TrackOrderState>;
}

/// @nodoc
class _$TrackOrderStateCopyWithImpl<$Res, $Val extends TrackOrderState>
    implements $TrackOrderStateCopyWith<$Res> {
  _$TrackOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TrackOrderStateImplCopyWith<$Res> {
  factory _$$TrackOrderStateImplCopyWith(_$TrackOrderStateImpl value,
          $Res Function(_$TrackOrderStateImpl) then) =
      __$$TrackOrderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TrackOrderDetails trackOrderItem,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});

  $TrackOrderDetailsCopyWith<$Res> get trackOrderItem;
}

/// @nodoc
class __$$TrackOrderStateImplCopyWithImpl<$Res>
    extends _$TrackOrderStateCopyWithImpl<$Res, _$TrackOrderStateImpl>
    implements _$$TrackOrderStateImplCopyWith<$Res> {
  __$$TrackOrderStateImplCopyWithImpl(
      _$TrackOrderStateImpl _value, $Res Function(_$TrackOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackOrderItem = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_$TrackOrderStateImpl(
      trackOrderItem: null == trackOrderItem
          ? _value.trackOrderItem
          : trackOrderItem // ignore: cast_nullable_to_non_nullable
              as TrackOrderDetails,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackOrderDetailsCopyWith<$Res> get trackOrderItem {
    return $TrackOrderDetailsCopyWith<$Res>(_value.trackOrderItem, (value) {
      return _then(_value.copyWith(trackOrderItem: value));
    });
  }
}

/// @nodoc

class _$TrackOrderStateImpl extends _TrackOrderState {
  const _$TrackOrderStateImpl(
      {required this.trackOrderItem, required this.apiFailureOrSuccessOption})
      : super._();

  @override
  final TrackOrderDetails trackOrderItem;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;

  @override
  String toString() {
    return 'TrackOrderState(trackOrderItem: $trackOrderItem, apiFailureOrSuccessOption: $apiFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackOrderStateImpl &&
            (identical(other.trackOrderItem, trackOrderItem) ||
                other.trackOrderItem == trackOrderItem) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, trackOrderItem, apiFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderStateImplCopyWith<_$TrackOrderStateImpl> get copyWith =>
      __$$TrackOrderStateImplCopyWithImpl<_$TrackOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)
        $default, {
    required TResult Function() initial,
  }) {
    return $default(trackOrderItem, apiFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)?
        $default, {
    TResult? Function()? initial,
  }) {
    return $default?.call(trackOrderItem, apiFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)?
        $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(trackOrderItem, apiFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrackOrderState value) $default, {
    required TResult Function(_Initial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrackOrderState value)? $default, {
    TResult? Function(_Initial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrackOrderState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TrackOrderState extends TrackOrderState {
  const factory _TrackOrderState(
      {required final TrackOrderDetails trackOrderItem,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption}) = _$TrackOrderStateImpl;
  const _TrackOrderState._() : super._();

  TrackOrderDetails get trackOrderItem;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$$TrackOrderStateImplCopyWith<_$TrackOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TrackOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'TrackOrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)
        $default, {
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)?
        $default, {
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TrackOrderDetails trackOrderItem,
            Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption)?
        $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrackOrderState value) $default, {
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrackOrderState value)? $default, {
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrackOrderState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends TrackOrderState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}
