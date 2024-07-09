// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CouponEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String couponCode) couponSearch,
    required TResult Function(Coupon coupon) applyCoupon,
    required TResult Function() removeCoupon,
    required TResult Function() clearCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String couponCode)? couponSearch,
    TResult? Function(Coupon coupon)? applyCoupon,
    TResult? Function()? removeCoupon,
    TResult? Function()? clearCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String couponCode)? couponSearch,
    TResult Function(Coupon coupon)? applyCoupon,
    TResult Function()? removeCoupon,
    TResult Function()? clearCoupons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_GetCoupon value) couponSearch,
    required TResult Function(_Apply value) applyCoupon,
    required TResult Function(_Remove value) removeCoupon,
    required TResult Function(_Clear value) clearCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_GetCoupon value)? couponSearch,
    TResult? Function(_Apply value)? applyCoupon,
    TResult? Function(_Remove value)? removeCoupon,
    TResult? Function(_Clear value)? clearCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_GetCoupon value)? couponSearch,
    TResult Function(_Apply value)? applyCoupon,
    TResult Function(_Remove value)? removeCoupon,
    TResult Function(_Clear value)? clearCoupons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponEventCopyWith<$Res> {
  factory $CouponEventCopyWith(
          CouponEvent value, $Res Function(CouponEvent) then) =
      _$CouponEventCopyWithImpl<$Res, CouponEvent>;
}

/// @nodoc
class _$CouponEventCopyWithImpl<$Res, $Val extends CouponEvent>
    implements $CouponEventCopyWith<$Res> {
  _$CouponEventCopyWithImpl(this._value, this._then);

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
    extends _$CouponEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'CouponEvent.initialized()';
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
    required TResult Function() fetch,
    required TResult Function(String couponCode) couponSearch,
    required TResult Function(Coupon coupon) applyCoupon,
    required TResult Function() removeCoupon,
    required TResult Function() clearCoupons,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String couponCode)? couponSearch,
    TResult? Function(Coupon coupon)? applyCoupon,
    TResult? Function()? removeCoupon,
    TResult? Function()? clearCoupons,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String couponCode)? couponSearch,
    TResult Function(Coupon coupon)? applyCoupon,
    TResult Function()? removeCoupon,
    TResult Function()? clearCoupons,
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
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_GetCoupon value) couponSearch,
    required TResult Function(_Apply value) applyCoupon,
    required TResult Function(_Remove value) removeCoupon,
    required TResult Function(_Clear value) clearCoupons,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_GetCoupon value)? couponSearch,
    TResult? Function(_Apply value)? applyCoupon,
    TResult? Function(_Remove value)? removeCoupon,
    TResult? Function(_Clear value)? clearCoupons,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_GetCoupon value)? couponSearch,
    TResult Function(_Apply value)? applyCoupon,
    TResult Function(_Remove value)? removeCoupon,
    TResult Function(_Clear value)? clearCoupons,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CouponEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'CouponEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String couponCode) couponSearch,
    required TResult Function(Coupon coupon) applyCoupon,
    required TResult Function() removeCoupon,
    required TResult Function() clearCoupons,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String couponCode)? couponSearch,
    TResult? Function(Coupon coupon)? applyCoupon,
    TResult? Function()? removeCoupon,
    TResult? Function()? clearCoupons,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String couponCode)? couponSearch,
    TResult Function(Coupon coupon)? applyCoupon,
    TResult Function()? removeCoupon,
    TResult Function()? clearCoupons,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_GetCoupon value) couponSearch,
    required TResult Function(_Apply value) applyCoupon,
    required TResult Function(_Remove value) removeCoupon,
    required TResult Function(_Clear value) clearCoupons,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_GetCoupon value)? couponSearch,
    TResult? Function(_Apply value)? applyCoupon,
    TResult? Function(_Remove value)? removeCoupon,
    TResult? Function(_Clear value)? clearCoupons,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_GetCoupon value)? couponSearch,
    TResult Function(_Apply value)? applyCoupon,
    TResult Function(_Remove value)? removeCoupon,
    TResult Function(_Clear value)? clearCoupons,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CouponEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$GetCouponImplCopyWith<$Res> {
  factory _$$GetCouponImplCopyWith(
          _$GetCouponImpl value, $Res Function(_$GetCouponImpl) then) =
      __$$GetCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String couponCode});
}

/// @nodoc
class __$$GetCouponImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$GetCouponImpl>
    implements _$$GetCouponImplCopyWith<$Res> {
  __$$GetCouponImplCopyWithImpl(
      _$GetCouponImpl _value, $Res Function(_$GetCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
  }) {
    return _then(_$GetCouponImpl(
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCouponImpl implements _GetCoupon {
  const _$GetCouponImpl({required this.couponCode});

  @override
  final String couponCode;

  @override
  String toString() {
    return 'CouponEvent.couponSearch(couponCode: $couponCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCouponImpl &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCouponImplCopyWith<_$GetCouponImpl> get copyWith =>
      __$$GetCouponImplCopyWithImpl<_$GetCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String couponCode) couponSearch,
    required TResult Function(Coupon coupon) applyCoupon,
    required TResult Function() removeCoupon,
    required TResult Function() clearCoupons,
  }) {
    return couponSearch(couponCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String couponCode)? couponSearch,
    TResult? Function(Coupon coupon)? applyCoupon,
    TResult? Function()? removeCoupon,
    TResult? Function()? clearCoupons,
  }) {
    return couponSearch?.call(couponCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String couponCode)? couponSearch,
    TResult Function(Coupon coupon)? applyCoupon,
    TResult Function()? removeCoupon,
    TResult Function()? clearCoupons,
    required TResult orElse(),
  }) {
    if (couponSearch != null) {
      return couponSearch(couponCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_GetCoupon value) couponSearch,
    required TResult Function(_Apply value) applyCoupon,
    required TResult Function(_Remove value) removeCoupon,
    required TResult Function(_Clear value) clearCoupons,
  }) {
    return couponSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_GetCoupon value)? couponSearch,
    TResult? Function(_Apply value)? applyCoupon,
    TResult? Function(_Remove value)? removeCoupon,
    TResult? Function(_Clear value)? clearCoupons,
  }) {
    return couponSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_GetCoupon value)? couponSearch,
    TResult Function(_Apply value)? applyCoupon,
    TResult Function(_Remove value)? removeCoupon,
    TResult Function(_Clear value)? clearCoupons,
    required TResult orElse(),
  }) {
    if (couponSearch != null) {
      return couponSearch(this);
    }
    return orElse();
  }
}

abstract class _GetCoupon implements CouponEvent {
  const factory _GetCoupon({required final String couponCode}) =
      _$GetCouponImpl;

  String get couponCode;
  @JsonKey(ignore: true)
  _$$GetCouponImplCopyWith<_$GetCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyImplCopyWith<$Res> {
  factory _$$ApplyImplCopyWith(
          _$ApplyImpl value, $Res Function(_$ApplyImpl) then) =
      __$$ApplyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Coupon coupon});

  $CouponCopyWith<$Res> get coupon;
}

/// @nodoc
class __$$ApplyImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$ApplyImpl>
    implements _$$ApplyImplCopyWith<$Res> {
  __$$ApplyImplCopyWithImpl(
      _$ApplyImpl _value, $Res Function(_$ApplyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupon = null,
  }) {
    return _then(_$ApplyImpl(
      coupon: null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as Coupon,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponCopyWith<$Res> get coupon {
    return $CouponCopyWith<$Res>(_value.coupon, (value) {
      return _then(_value.copyWith(coupon: value));
    });
  }
}

/// @nodoc

class _$ApplyImpl implements _Apply {
  const _$ApplyImpl({required this.coupon});

  @override
  final Coupon coupon;

  @override
  String toString() {
    return 'CouponEvent.applyCoupon(coupon: $coupon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyImpl &&
            (identical(other.coupon, coupon) || other.coupon == coupon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyImplCopyWith<_$ApplyImpl> get copyWith =>
      __$$ApplyImplCopyWithImpl<_$ApplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String couponCode) couponSearch,
    required TResult Function(Coupon coupon) applyCoupon,
    required TResult Function() removeCoupon,
    required TResult Function() clearCoupons,
  }) {
    return applyCoupon(coupon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String couponCode)? couponSearch,
    TResult? Function(Coupon coupon)? applyCoupon,
    TResult? Function()? removeCoupon,
    TResult? Function()? clearCoupons,
  }) {
    return applyCoupon?.call(coupon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String couponCode)? couponSearch,
    TResult Function(Coupon coupon)? applyCoupon,
    TResult Function()? removeCoupon,
    TResult Function()? clearCoupons,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(coupon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_GetCoupon value) couponSearch,
    required TResult Function(_Apply value) applyCoupon,
    required TResult Function(_Remove value) removeCoupon,
    required TResult Function(_Clear value) clearCoupons,
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_GetCoupon value)? couponSearch,
    TResult? Function(_Apply value)? applyCoupon,
    TResult? Function(_Remove value)? removeCoupon,
    TResult? Function(_Clear value)? clearCoupons,
  }) {
    return applyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_GetCoupon value)? couponSearch,
    TResult Function(_Apply value)? applyCoupon,
    TResult Function(_Remove value)? removeCoupon,
    TResult Function(_Clear value)? clearCoupons,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(this);
    }
    return orElse();
  }
}

abstract class _Apply implements CouponEvent {
  const factory _Apply({required final Coupon coupon}) = _$ApplyImpl;

  Coupon get coupon;
  @JsonKey(ignore: true)
  _$$ApplyImplCopyWith<_$ApplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$RemoveImpl>
    implements _$$RemoveImplCopyWith<$Res> {
  __$$RemoveImplCopyWithImpl(
      _$RemoveImpl _value, $Res Function(_$RemoveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveImpl implements _Remove {
  const _$RemoveImpl();

  @override
  String toString() {
    return 'CouponEvent.removeCoupon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String couponCode) couponSearch,
    required TResult Function(Coupon coupon) applyCoupon,
    required TResult Function() removeCoupon,
    required TResult Function() clearCoupons,
  }) {
    return removeCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String couponCode)? couponSearch,
    TResult? Function(Coupon coupon)? applyCoupon,
    TResult? Function()? removeCoupon,
    TResult? Function()? clearCoupons,
  }) {
    return removeCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String couponCode)? couponSearch,
    TResult Function(Coupon coupon)? applyCoupon,
    TResult Function()? removeCoupon,
    TResult Function()? clearCoupons,
    required TResult orElse(),
  }) {
    if (removeCoupon != null) {
      return removeCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_GetCoupon value) couponSearch,
    required TResult Function(_Apply value) applyCoupon,
    required TResult Function(_Remove value) removeCoupon,
    required TResult Function(_Clear value) clearCoupons,
  }) {
    return removeCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_GetCoupon value)? couponSearch,
    TResult? Function(_Apply value)? applyCoupon,
    TResult? Function(_Remove value)? removeCoupon,
    TResult? Function(_Clear value)? clearCoupons,
  }) {
    return removeCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_GetCoupon value)? couponSearch,
    TResult Function(_Apply value)? applyCoupon,
    TResult Function(_Remove value)? removeCoupon,
    TResult Function(_Clear value)? clearCoupons,
    required TResult orElse(),
  }) {
    if (removeCoupon != null) {
      return removeCoupon(this);
    }
    return orElse();
  }
}

abstract class _Remove implements CouponEvent {
  const factory _Remove() = _$RemoveImpl;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'CouponEvent.clearCoupons()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String couponCode) couponSearch,
    required TResult Function(Coupon coupon) applyCoupon,
    required TResult Function() removeCoupon,
    required TResult Function() clearCoupons,
  }) {
    return clearCoupons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String couponCode)? couponSearch,
    TResult? Function(Coupon coupon)? applyCoupon,
    TResult? Function()? removeCoupon,
    TResult? Function()? clearCoupons,
  }) {
    return clearCoupons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String couponCode)? couponSearch,
    TResult Function(Coupon coupon)? applyCoupon,
    TResult Function()? removeCoupon,
    TResult Function()? clearCoupons,
    required TResult orElse(),
  }) {
    if (clearCoupons != null) {
      return clearCoupons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_GetCoupon value) couponSearch,
    required TResult Function(_Apply value) applyCoupon,
    required TResult Function(_Remove value) removeCoupon,
    required TResult Function(_Clear value) clearCoupons,
  }) {
    return clearCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_GetCoupon value)? couponSearch,
    TResult? Function(_Apply value)? applyCoupon,
    TResult? Function(_Remove value)? removeCoupon,
    TResult? Function(_Clear value)? clearCoupons,
  }) {
    return clearCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_GetCoupon value)? couponSearch,
    TResult Function(_Apply value)? applyCoupon,
    TResult Function(_Remove value)? removeCoupon,
    TResult Function(_Clear value)? clearCoupons,
    required TResult orElse(),
  }) {
    if (clearCoupons != null) {
      return clearCoupons(this);
    }
    return orElse();
  }
}

abstract class _Clear implements CouponEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$CouponState {
  List<Coupon> get couponList => throw _privateConstructorUsedError;
  List<Coupon> get searchCouponList => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isApplying => throw _privateConstructorUsedError;
  Coupon get appliedCoupon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CouponStateCopyWith<CouponState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponStateCopyWith<$Res> {
  factory $CouponStateCopyWith(
          CouponState value, $Res Function(CouponState) then) =
      _$CouponStateCopyWithImpl<$Res, CouponState>;
  @useResult
  $Res call(
      {List<Coupon> couponList,
      List<Coupon> searchCouponList,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool isApplying,
      Coupon appliedCoupon});

  $CouponCopyWith<$Res> get appliedCoupon;
}

/// @nodoc
class _$CouponStateCopyWithImpl<$Res, $Val extends CouponState>
    implements $CouponStateCopyWith<$Res> {
  _$CouponStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponList = null,
    Object? searchCouponList = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? isApplying = null,
    Object? appliedCoupon = null,
  }) {
    return _then(_value.copyWith(
      couponList: null == couponList
          ? _value.couponList
          : couponList // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
      searchCouponList: null == searchCouponList
          ? _value.searchCouponList
          : searchCouponList // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isApplying: null == isApplying
          ? _value.isApplying
          : isApplying // ignore: cast_nullable_to_non_nullable
              as bool,
      appliedCoupon: null == appliedCoupon
          ? _value.appliedCoupon
          : appliedCoupon // ignore: cast_nullable_to_non_nullable
              as Coupon,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponCopyWith<$Res> get appliedCoupon {
    return $CouponCopyWith<$Res>(_value.appliedCoupon, (value) {
      return _then(_value.copyWith(appliedCoupon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CouponStateImplCopyWith<$Res>
    implements $CouponStateCopyWith<$Res> {
  factory _$$CouponStateImplCopyWith(
          _$CouponStateImpl value, $Res Function(_$CouponStateImpl) then) =
      __$$CouponStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Coupon> couponList,
      List<Coupon> searchCouponList,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool isApplying,
      Coupon appliedCoupon});

  @override
  $CouponCopyWith<$Res> get appliedCoupon;
}

/// @nodoc
class __$$CouponStateImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponStateImpl>
    implements _$$CouponStateImplCopyWith<$Res> {
  __$$CouponStateImplCopyWithImpl(
      _$CouponStateImpl _value, $Res Function(_$CouponStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponList = null,
    Object? searchCouponList = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? isApplying = null,
    Object? appliedCoupon = null,
  }) {
    return _then(_$CouponStateImpl(
      couponList: null == couponList
          ? _value._couponList
          : couponList // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
      searchCouponList: null == searchCouponList
          ? _value._searchCouponList
          : searchCouponList // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isApplying: null == isApplying
          ? _value.isApplying
          : isApplying // ignore: cast_nullable_to_non_nullable
              as bool,
      appliedCoupon: null == appliedCoupon
          ? _value.appliedCoupon
          : appliedCoupon // ignore: cast_nullable_to_non_nullable
              as Coupon,
    ));
  }
}

/// @nodoc

class _$CouponStateImpl extends _CouponState {
  const _$CouponStateImpl(
      {required final List<Coupon> couponList,
      required final List<Coupon> searchCouponList,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.isApplying,
      required this.appliedCoupon})
      : _couponList = couponList,
        _searchCouponList = searchCouponList,
        super._();

  final List<Coupon> _couponList;
  @override
  List<Coupon> get couponList {
    if (_couponList is EqualUnmodifiableListView) return _couponList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_couponList);
  }

  final List<Coupon> _searchCouponList;
  @override
  List<Coupon> get searchCouponList {
    if (_searchCouponList is EqualUnmodifiableListView)
      return _searchCouponList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchCouponList);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final bool isApplying;
  @override
  final Coupon appliedCoupon;

  @override
  String toString() {
    return 'CouponState(couponList: $couponList, searchCouponList: $searchCouponList, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, isApplying: $isApplying, appliedCoupon: $appliedCoupon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponStateImpl &&
            const DeepCollectionEquality()
                .equals(other._couponList, _couponList) &&
            const DeepCollectionEquality()
                .equals(other._searchCouponList, _searchCouponList) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isApplying, isApplying) ||
                other.isApplying == isApplying) &&
            (identical(other.appliedCoupon, appliedCoupon) ||
                other.appliedCoupon == appliedCoupon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_couponList),
      const DeepCollectionEquality().hash(_searchCouponList),
      apiFailureOrSuccessOption,
      isFetching,
      isApplying,
      appliedCoupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      __$$CouponStateImplCopyWithImpl<_$CouponStateImpl>(this, _$identity);
}

abstract class _CouponState extends CouponState {
  const factory _CouponState(
      {required final List<Coupon> couponList,
      required final List<Coupon> searchCouponList,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final bool isApplying,
      required final Coupon appliedCoupon}) = _$CouponStateImpl;
  const _CouponState._() : super._();

  @override
  List<Coupon> get couponList;
  @override
  List<Coupon> get searchCouponList;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  bool get isApplying;
  @override
  Coupon get appliedCoupon;
  @override
  @JsonKey(ignore: true)
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
