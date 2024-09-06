// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderGroup {
  String get displayName => throw _privateConstructorUsedError;
  List<Order> get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderGroupCopyWith<OrderGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderGroupCopyWith<$Res> {
  factory $OrderGroupCopyWith(
          OrderGroup value, $Res Function(OrderGroup) then) =
      _$OrderGroupCopyWithImpl<$Res, OrderGroup>;
  @useResult
  $Res call({String displayName, List<Order> order});
}

/// @nodoc
class _$OrderGroupCopyWithImpl<$Res, $Val extends OrderGroup>
    implements $OrderGroupCopyWith<$Res> {
  _$OrderGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderGroupImplCopyWith<$Res>
    implements $OrderGroupCopyWith<$Res> {
  factory _$$OrderGroupImplCopyWith(
          _$OrderGroupImpl value, $Res Function(_$OrderGroupImpl) then) =
      __$$OrderGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName, List<Order> order});
}

/// @nodoc
class __$$OrderGroupImplCopyWithImpl<$Res>
    extends _$OrderGroupCopyWithImpl<$Res, _$OrderGroupImpl>
    implements _$$OrderGroupImplCopyWith<$Res> {
  __$$OrderGroupImplCopyWithImpl(
      _$OrderGroupImpl _value, $Res Function(_$OrderGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? order = null,
  }) {
    return _then(_$OrderGroupImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$OrderGroupImpl implements _OrderGroup {
  _$OrderGroupImpl(
      {required this.displayName, required final List<Order> order})
      : _order = order;

  @override
  final String displayName;
  final List<Order> _order;
  @override
  List<Order> get order {
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order);
  }

  @override
  String toString() {
    return 'OrderGroup(displayName: $displayName, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderGroupImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            const DeepCollectionEquality().equals(other._order, _order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, displayName, const DeepCollectionEquality().hash(_order));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderGroupImplCopyWith<_$OrderGroupImpl> get copyWith =>
      __$$OrderGroupImplCopyWithImpl<_$OrderGroupImpl>(this, _$identity);
}

abstract class _OrderGroup implements OrderGroup {
  factory _OrderGroup(
      {required final String displayName,
      required final List<Order> order}) = _$OrderGroupImpl;

  @override
  String get displayName;
  @override
  List<Order> get order;
  @override
  @JsonKey(ignore: true)
  _$$OrderGroupImplCopyWith<_$OrderGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
