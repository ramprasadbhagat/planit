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
    required TResult Function(Order order) getTrackOrderDetails,
    required TResult Function() cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Order order)? getTrackOrderDetails,
    TResult? Function()? cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Order order)? getTrackOrderDetails,
    TResult Function()? cancelOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTrackOrderDetails value) getTrackOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
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
    required TResult Function(Order order) getTrackOrderDetails,
    required TResult Function() cancelOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Order order)? getTrackOrderDetails,
    TResult? Function()? cancelOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Order order)? getTrackOrderDetails,
    TResult Function()? cancelOrder,
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
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
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
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$GetTrackOrderDetailsImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$GetTrackOrderDetailsImpl>
    implements _$$GetTrackOrderDetailsImplCopyWith<$Res> {
  __$$GetTrackOrderDetailsImplCopyWithImpl(_$GetTrackOrderDetailsImpl _value,
      $Res Function(_$GetTrackOrderDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$GetTrackOrderDetailsImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$GetTrackOrderDetailsImpl implements _GetTrackOrderDetails {
  const _$GetTrackOrderDetailsImpl({required this.order});

  @override
  final Order order;

  @override
  String toString() {
    return 'TrackOrderEvent.getTrackOrderDetails(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTrackOrderDetailsImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTrackOrderDetailsImplCopyWith<_$GetTrackOrderDetailsImpl>
      get copyWith =>
          __$$GetTrackOrderDetailsImplCopyWithImpl<_$GetTrackOrderDetailsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Order order) getTrackOrderDetails,
    required TResult Function() cancelOrder,
  }) {
    return getTrackOrderDetails(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Order order)? getTrackOrderDetails,
    TResult? Function()? cancelOrder,
  }) {
    return getTrackOrderDetails?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Order order)? getTrackOrderDetails,
    TResult Function()? cancelOrder,
    required TResult orElse(),
  }) {
    if (getTrackOrderDetails != null) {
      return getTrackOrderDetails(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTrackOrderDetails value) getTrackOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return getTrackOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return getTrackOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (getTrackOrderDetails != null) {
      return getTrackOrderDetails(this);
    }
    return orElse();
  }
}

abstract class _GetTrackOrderDetails implements TrackOrderEvent {
  const factory _GetTrackOrderDetails({required final Order order}) =
      _$GetTrackOrderDetailsImpl;

  Order get order;
  @JsonKey(ignore: true)
  _$$GetTrackOrderDetailsImplCopyWith<_$GetTrackOrderDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderImplCopyWith<$Res> {
  factory _$$CancelOrderImplCopyWith(
          _$CancelOrderImpl value, $Res Function(_$CancelOrderImpl) then) =
      __$$CancelOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelOrderImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$CancelOrderImpl>
    implements _$$CancelOrderImplCopyWith<$Res> {
  __$$CancelOrderImplCopyWithImpl(
      _$CancelOrderImpl _value, $Res Function(_$CancelOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelOrderImpl implements _CancelOrder {
  const _$CancelOrderImpl();

  @override
  String toString() {
    return 'TrackOrderEvent.cancelOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Order order) getTrackOrderDetails,
    required TResult Function() cancelOrder,
  }) {
    return cancelOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Order order)? getTrackOrderDetails,
    TResult? Function()? cancelOrder,
  }) {
    return cancelOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Order order)? getTrackOrderDetails,
    TResult Function()? cancelOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTrackOrderDetails value) getTrackOrderDetails,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTrackOrderDetails value)? getTrackOrderDetails,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements TrackOrderEvent {
  const factory _CancelOrder() = _$CancelOrderImpl;
}

/// @nodoc
mixin _$TrackOrderState {
  TrackOrderDetails get trackOrderItem => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackOrderStateCopyWith<TrackOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderStateCopyWith<$Res> {
  factory $TrackOrderStateCopyWith(
          TrackOrderState value, $Res Function(TrackOrderState) then) =
      _$TrackOrderStateCopyWithImpl<$Res, TrackOrderState>;
  @useResult
  $Res call(
      {TrackOrderDetails trackOrderItem,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      Order order});

  $TrackOrderDetailsCopyWith<$Res> get trackOrderItem;
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$TrackOrderStateCopyWithImpl<$Res, $Val extends TrackOrderState>
    implements $TrackOrderStateCopyWith<$Res> {
  _$TrackOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackOrderItem = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      trackOrderItem: null == trackOrderItem
          ? _value.trackOrderItem
          : trackOrderItem // ignore: cast_nullable_to_non_nullable
              as TrackOrderDetails,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackOrderDetailsCopyWith<$Res> get trackOrderItem {
    return $TrackOrderDetailsCopyWith<$Res>(_value.trackOrderItem, (value) {
      return _then(_value.copyWith(trackOrderItem: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackOrderStateImplCopyWith<$Res>
    implements $TrackOrderStateCopyWith<$Res> {
  factory _$$TrackOrderStateImplCopyWith(_$TrackOrderStateImpl value,
          $Res Function(_$TrackOrderStateImpl) then) =
      __$$TrackOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackOrderDetails trackOrderItem,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      Order order});

  @override
  $TrackOrderDetailsCopyWith<$Res> get trackOrderItem;
  @override
  $OrderCopyWith<$Res> get order;
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
    Object? isFetching = null,
    Object? order = null,
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
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc

class _$TrackOrderStateImpl extends _TrackOrderState {
  const _$TrackOrderStateImpl(
      {required this.trackOrderItem,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.order})
      : super._();

  @override
  final TrackOrderDetails trackOrderItem;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final Order order;

  @override
  String toString() {
    return 'TrackOrderState(trackOrderItem: $trackOrderItem, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, order: $order)';
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
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackOrderItem,
      apiFailureOrSuccessOption, isFetching, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderStateImplCopyWith<_$TrackOrderStateImpl> get copyWith =>
      __$$TrackOrderStateImplCopyWithImpl<_$TrackOrderStateImpl>(
          this, _$identity);
}

abstract class _TrackOrderState extends TrackOrderState {
  const factory _TrackOrderState(
      {required final TrackOrderDetails trackOrderItem,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final Order order}) = _$TrackOrderStateImpl;
  const _TrackOrderState._() : super._();

  @override
  TrackOrderDetails get trackOrderItem;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  Order get order;
  @override
  @JsonKey(ignore: true)
  _$$TrackOrderStateImplCopyWith<_$TrackOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
