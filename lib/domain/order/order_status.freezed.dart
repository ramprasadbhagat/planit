// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) processing,
    required TResult Function() delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? processing,
    TResult? Function()? delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? processing,
    TResult Function()? delivered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderProcessing value) processing,
    required TResult Function(_OrderDelivered value) delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderProcessing value)? processing,
    TResult? Function(_OrderDelivered value)? delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderProcessing value)? processing,
    TResult Function(_OrderDelivered value)? delivered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusCopyWith<$Res> {
  factory $OrderStatusCopyWith(
          OrderStatus value, $Res Function(OrderStatus) then) =
      _$OrderStatusCopyWithImpl<$Res, OrderStatus>;
}

/// @nodoc
class _$OrderStatusCopyWithImpl<$Res, $Val extends OrderStatus>
    implements $OrderStatusCopyWith<$Res> {
  _$OrderStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderProcessingImplCopyWith<$Res> {
  factory _$$OrderProcessingImplCopyWith(_$OrderProcessingImpl value,
          $Res Function(_$OrderProcessingImpl) then) =
      __$$OrderProcessingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$OrderProcessingImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderProcessingImpl>
    implements _$$OrderProcessingImplCopyWith<$Res> {
  __$$OrderProcessingImplCopyWithImpl(
      _$OrderProcessingImpl _value, $Res Function(_$OrderProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$OrderProcessingImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderProcessingImpl implements _OrderProcessing {
  const _$OrderProcessingImpl({required this.status});

  @override
  final String status;

  @override
  String toString() {
    return 'OrderStatus.processing(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProcessingImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProcessingImplCopyWith<_$OrderProcessingImpl> get copyWith =>
      __$$OrderProcessingImplCopyWithImpl<_$OrderProcessingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) processing,
    required TResult Function() delivered,
  }) {
    return processing(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? processing,
    TResult? Function()? delivered,
  }) {
    return processing?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? processing,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderProcessing value) processing,
    required TResult Function(_OrderDelivered value) delivered,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderProcessing value)? processing,
    TResult? Function(_OrderDelivered value)? delivered,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderProcessing value)? processing,
    TResult Function(_OrderDelivered value)? delivered,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _OrderProcessing implements OrderStatus {
  const factory _OrderProcessing({required final String status}) =
      _$OrderProcessingImpl;

  String get status;
  @JsonKey(ignore: true)
  _$$OrderProcessingImplCopyWith<_$OrderProcessingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderDeliveredImplCopyWith<$Res> {
  factory _$$OrderDeliveredImplCopyWith(_$OrderDeliveredImpl value,
          $Res Function(_$OrderDeliveredImpl) then) =
      __$$OrderDeliveredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderDeliveredImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderDeliveredImpl>
    implements _$$OrderDeliveredImplCopyWith<$Res> {
  __$$OrderDeliveredImplCopyWithImpl(
      _$OrderDeliveredImpl _value, $Res Function(_$OrderDeliveredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderDeliveredImpl implements _OrderDelivered {
  const _$OrderDeliveredImpl();

  @override
  String toString() {
    return 'OrderStatus.delivered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderDeliveredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) processing,
    required TResult Function() delivered,
  }) {
    return delivered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? processing,
    TResult? Function()? delivered,
  }) {
    return delivered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? processing,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (delivered != null) {
      return delivered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderProcessing value) processing,
    required TResult Function(_OrderDelivered value) delivered,
  }) {
    return delivered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderProcessing value)? processing,
    TResult? Function(_OrderDelivered value)? delivered,
  }) {
    return delivered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderProcessing value)? processing,
    TResult Function(_OrderDelivered value)? delivered,
    required TResult orElse(),
  }) {
    if (delivered != null) {
      return delivered(this);
    }
    return orElse();
  }
}

abstract class _OrderDelivered implements OrderStatus {
  const factory _OrderDelivered() = _$OrderDeliveredImpl;
}
