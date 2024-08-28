// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_money_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddMoneyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(String amount) changeAmount,
    required TResult Function() addMoneyClicked,
    required TResult Function(int amount) handlePaymentSuccess,
    required TResult Function(int amount, String message) handlePaymentFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(String amount)? changeAmount,
    TResult? Function()? addMoneyClicked,
    TResult? Function(int amount)? handlePaymentSuccess,
    TResult? Function(int amount, String message)? handlePaymentFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(String amount)? changeAmount,
    TResult Function()? addMoneyClicked,
    TResult Function(int amount)? handlePaymentSuccess,
    TResult Function(int amount, String message)? handlePaymentFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PaymentMethod value) changePaymentMethod,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddMoneyClicked value) addMoneyClicked,
    required TResult Function(_HandlePaymentSuccess value) handlePaymentSuccess,
    required TResult Function(_HandlePaymentFailed value) handlePaymentFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PaymentMethod value)? changePaymentMethod,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult? Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult? Function(_HandlePaymentFailed value)? handlePaymentFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PaymentMethod value)? changePaymentMethod,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult Function(_HandlePaymentFailed value)? handlePaymentFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMoneyEventCopyWith<$Res> {
  factory $AddMoneyEventCopyWith(
          AddMoneyEvent value, $Res Function(AddMoneyEvent) then) =
      _$AddMoneyEventCopyWithImpl<$Res, AddMoneyEvent>;
}

/// @nodoc
class _$AddMoneyEventCopyWithImpl<$Res, $Val extends AddMoneyEvent>
    implements $AddMoneyEventCopyWith<$Res> {
  _$AddMoneyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AddMoneyEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'AddMoneyEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(String amount) changeAmount,
    required TResult Function() addMoneyClicked,
    required TResult Function(int amount) handlePaymentSuccess,
    required TResult Function(int amount, String message) handlePaymentFailed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(String amount)? changeAmount,
    TResult? Function()? addMoneyClicked,
    TResult? Function(int amount)? handlePaymentSuccess,
    TResult? Function(int amount, String message)? handlePaymentFailed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(String amount)? changeAmount,
    TResult Function()? addMoneyClicked,
    TResult Function(int amount)? handlePaymentSuccess,
    TResult Function(int amount, String message)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PaymentMethod value) changePaymentMethod,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddMoneyClicked value) addMoneyClicked,
    required TResult Function(_HandlePaymentSuccess value) handlePaymentSuccess,
    required TResult Function(_HandlePaymentFailed value) handlePaymentFailed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PaymentMethod value)? changePaymentMethod,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult? Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult? Function(_HandlePaymentFailed value)? handlePaymentFailed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PaymentMethod value)? changePaymentMethod,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult Function(_HandlePaymentFailed value)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AddMoneyEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$PaymentMethodImplCopyWith<$Res> {
  factory _$$PaymentMethodImplCopyWith(
          _$PaymentMethodImpl value, $Res Function(_$PaymentMethodImpl) then) =
      __$$PaymentMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethod paymentMethod});

  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$PaymentMethodImplCopyWithImpl<$Res>
    extends _$AddMoneyEventCopyWithImpl<$Res, _$PaymentMethodImpl>
    implements _$$PaymentMethodImplCopyWith<$Res> {
  __$$PaymentMethodImplCopyWithImpl(
      _$PaymentMethodImpl _value, $Res Function(_$PaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
  }) {
    return _then(_$PaymentMethodImpl(
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value));
    });
  }
}

/// @nodoc

class _$PaymentMethodImpl implements _PaymentMethod {
  const _$PaymentMethodImpl(this.paymentMethod);

  @override
  final PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'AddMoneyEvent.changePaymentMethod(paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodImpl &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      __$$PaymentMethodImplCopyWithImpl<_$PaymentMethodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(String amount) changeAmount,
    required TResult Function() addMoneyClicked,
    required TResult Function(int amount) handlePaymentSuccess,
    required TResult Function(int amount, String message) handlePaymentFailed,
  }) {
    return changePaymentMethod(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(String amount)? changeAmount,
    TResult? Function()? addMoneyClicked,
    TResult? Function(int amount)? handlePaymentSuccess,
    TResult? Function(int amount, String message)? handlePaymentFailed,
  }) {
    return changePaymentMethod?.call(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(String amount)? changeAmount,
    TResult Function()? addMoneyClicked,
    TResult Function(int amount)? handlePaymentSuccess,
    TResult Function(int amount, String message)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (changePaymentMethod != null) {
      return changePaymentMethod(paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PaymentMethod value) changePaymentMethod,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddMoneyClicked value) addMoneyClicked,
    required TResult Function(_HandlePaymentSuccess value) handlePaymentSuccess,
    required TResult Function(_HandlePaymentFailed value) handlePaymentFailed,
  }) {
    return changePaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PaymentMethod value)? changePaymentMethod,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult? Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult? Function(_HandlePaymentFailed value)? handlePaymentFailed,
  }) {
    return changePaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PaymentMethod value)? changePaymentMethod,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult Function(_HandlePaymentFailed value)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (changePaymentMethod != null) {
      return changePaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _PaymentMethod implements AddMoneyEvent {
  const factory _PaymentMethod(final PaymentMethod paymentMethod) =
      _$PaymentMethodImpl;

  PaymentMethod get paymentMethod;
  @JsonKey(ignore: true)
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAmountImplCopyWith<$Res> {
  factory _$$ChangeAmountImplCopyWith(
          _$ChangeAmountImpl value, $Res Function(_$ChangeAmountImpl) then) =
      __$$ChangeAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$ChangeAmountImplCopyWithImpl<$Res>
    extends _$AddMoneyEventCopyWithImpl<$Res, _$ChangeAmountImpl>
    implements _$$ChangeAmountImplCopyWith<$Res> {
  __$$ChangeAmountImplCopyWithImpl(
      _$ChangeAmountImpl _value, $Res Function(_$ChangeAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$ChangeAmountImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeAmountImpl implements _ChangeAmount {
  const _$ChangeAmountImpl(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'AddMoneyEvent.changeAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAmountImplCopyWith<_$ChangeAmountImpl> get copyWith =>
      __$$ChangeAmountImplCopyWithImpl<_$ChangeAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(String amount) changeAmount,
    required TResult Function() addMoneyClicked,
    required TResult Function(int amount) handlePaymentSuccess,
    required TResult Function(int amount, String message) handlePaymentFailed,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(String amount)? changeAmount,
    TResult? Function()? addMoneyClicked,
    TResult? Function(int amount)? handlePaymentSuccess,
    TResult? Function(int amount, String message)? handlePaymentFailed,
  }) {
    return changeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(String amount)? changeAmount,
    TResult Function()? addMoneyClicked,
    TResult Function(int amount)? handlePaymentSuccess,
    TResult Function(int amount, String message)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PaymentMethod value) changePaymentMethod,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddMoneyClicked value) addMoneyClicked,
    required TResult Function(_HandlePaymentSuccess value) handlePaymentSuccess,
    required TResult Function(_HandlePaymentFailed value) handlePaymentFailed,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PaymentMethod value)? changePaymentMethod,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult? Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult? Function(_HandlePaymentFailed value)? handlePaymentFailed,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PaymentMethod value)? changePaymentMethod,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult Function(_HandlePaymentFailed value)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeAmount implements AddMoneyEvent {
  const factory _ChangeAmount(final String amount) = _$ChangeAmountImpl;

  String get amount;
  @JsonKey(ignore: true)
  _$$ChangeAmountImplCopyWith<_$ChangeAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMoneyClickedImplCopyWith<$Res> {
  factory _$$AddMoneyClickedImplCopyWith(_$AddMoneyClickedImpl value,
          $Res Function(_$AddMoneyClickedImpl) then) =
      __$$AddMoneyClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddMoneyClickedImplCopyWithImpl<$Res>
    extends _$AddMoneyEventCopyWithImpl<$Res, _$AddMoneyClickedImpl>
    implements _$$AddMoneyClickedImplCopyWith<$Res> {
  __$$AddMoneyClickedImplCopyWithImpl(
      _$AddMoneyClickedImpl _value, $Res Function(_$AddMoneyClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddMoneyClickedImpl implements _AddMoneyClicked {
  const _$AddMoneyClickedImpl();

  @override
  String toString() {
    return 'AddMoneyEvent.addMoneyClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddMoneyClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(String amount) changeAmount,
    required TResult Function() addMoneyClicked,
    required TResult Function(int amount) handlePaymentSuccess,
    required TResult Function(int amount, String message) handlePaymentFailed,
  }) {
    return addMoneyClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(String amount)? changeAmount,
    TResult? Function()? addMoneyClicked,
    TResult? Function(int amount)? handlePaymentSuccess,
    TResult? Function(int amount, String message)? handlePaymentFailed,
  }) {
    return addMoneyClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(String amount)? changeAmount,
    TResult Function()? addMoneyClicked,
    TResult Function(int amount)? handlePaymentSuccess,
    TResult Function(int amount, String message)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (addMoneyClicked != null) {
      return addMoneyClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PaymentMethod value) changePaymentMethod,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddMoneyClicked value) addMoneyClicked,
    required TResult Function(_HandlePaymentSuccess value) handlePaymentSuccess,
    required TResult Function(_HandlePaymentFailed value) handlePaymentFailed,
  }) {
    return addMoneyClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PaymentMethod value)? changePaymentMethod,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult? Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult? Function(_HandlePaymentFailed value)? handlePaymentFailed,
  }) {
    return addMoneyClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PaymentMethod value)? changePaymentMethod,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult Function(_HandlePaymentFailed value)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (addMoneyClicked != null) {
      return addMoneyClicked(this);
    }
    return orElse();
  }
}

abstract class _AddMoneyClicked implements AddMoneyEvent {
  const factory _AddMoneyClicked() = _$AddMoneyClickedImpl;
}

/// @nodoc
abstract class _$$HandlePaymentSuccessImplCopyWith<$Res> {
  factory _$$HandlePaymentSuccessImplCopyWith(_$HandlePaymentSuccessImpl value,
          $Res Function(_$HandlePaymentSuccessImpl) then) =
      __$$HandlePaymentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount});
}

/// @nodoc
class __$$HandlePaymentSuccessImplCopyWithImpl<$Res>
    extends _$AddMoneyEventCopyWithImpl<$Res, _$HandlePaymentSuccessImpl>
    implements _$$HandlePaymentSuccessImplCopyWith<$Res> {
  __$$HandlePaymentSuccessImplCopyWithImpl(_$HandlePaymentSuccessImpl _value,
      $Res Function(_$HandlePaymentSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$HandlePaymentSuccessImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HandlePaymentSuccessImpl implements _HandlePaymentSuccess {
  const _$HandlePaymentSuccessImpl(this.amount);

  @override
  final int amount;

  @override
  String toString() {
    return 'AddMoneyEvent.handlePaymentSuccess(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandlePaymentSuccessImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandlePaymentSuccessImplCopyWith<_$HandlePaymentSuccessImpl>
      get copyWith =>
          __$$HandlePaymentSuccessImplCopyWithImpl<_$HandlePaymentSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(String amount) changeAmount,
    required TResult Function() addMoneyClicked,
    required TResult Function(int amount) handlePaymentSuccess,
    required TResult Function(int amount, String message) handlePaymentFailed,
  }) {
    return handlePaymentSuccess(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(String amount)? changeAmount,
    TResult? Function()? addMoneyClicked,
    TResult? Function(int amount)? handlePaymentSuccess,
    TResult? Function(int amount, String message)? handlePaymentFailed,
  }) {
    return handlePaymentSuccess?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(String amount)? changeAmount,
    TResult Function()? addMoneyClicked,
    TResult Function(int amount)? handlePaymentSuccess,
    TResult Function(int amount, String message)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (handlePaymentSuccess != null) {
      return handlePaymentSuccess(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PaymentMethod value) changePaymentMethod,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddMoneyClicked value) addMoneyClicked,
    required TResult Function(_HandlePaymentSuccess value) handlePaymentSuccess,
    required TResult Function(_HandlePaymentFailed value) handlePaymentFailed,
  }) {
    return handlePaymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PaymentMethod value)? changePaymentMethod,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult? Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult? Function(_HandlePaymentFailed value)? handlePaymentFailed,
  }) {
    return handlePaymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PaymentMethod value)? changePaymentMethod,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult Function(_HandlePaymentFailed value)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (handlePaymentSuccess != null) {
      return handlePaymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _HandlePaymentSuccess implements AddMoneyEvent {
  const factory _HandlePaymentSuccess(final int amount) =
      _$HandlePaymentSuccessImpl;

  int get amount;
  @JsonKey(ignore: true)
  _$$HandlePaymentSuccessImplCopyWith<_$HandlePaymentSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HandlePaymentFailedImplCopyWith<$Res> {
  factory _$$HandlePaymentFailedImplCopyWith(_$HandlePaymentFailedImpl value,
          $Res Function(_$HandlePaymentFailedImpl) then) =
      __$$HandlePaymentFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount, String message});
}

/// @nodoc
class __$$HandlePaymentFailedImplCopyWithImpl<$Res>
    extends _$AddMoneyEventCopyWithImpl<$Res, _$HandlePaymentFailedImpl>
    implements _$$HandlePaymentFailedImplCopyWith<$Res> {
  __$$HandlePaymentFailedImplCopyWithImpl(_$HandlePaymentFailedImpl _value,
      $Res Function(_$HandlePaymentFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? message = null,
  }) {
    return _then(_$HandlePaymentFailedImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HandlePaymentFailedImpl implements _HandlePaymentFailed {
  const _$HandlePaymentFailedImpl(
      {required this.amount, required this.message});

  @override
  final int amount;
  @override
  final String message;

  @override
  String toString() {
    return 'AddMoneyEvent.handlePaymentFailed(amount: $amount, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandlePaymentFailedImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandlePaymentFailedImplCopyWith<_$HandlePaymentFailedImpl> get copyWith =>
      __$$HandlePaymentFailedImplCopyWithImpl<_$HandlePaymentFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(String amount) changeAmount,
    required TResult Function() addMoneyClicked,
    required TResult Function(int amount) handlePaymentSuccess,
    required TResult Function(int amount, String message) handlePaymentFailed,
  }) {
    return handlePaymentFailed(amount, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(String amount)? changeAmount,
    TResult? Function()? addMoneyClicked,
    TResult? Function(int amount)? handlePaymentSuccess,
    TResult? Function(int amount, String message)? handlePaymentFailed,
  }) {
    return handlePaymentFailed?.call(amount, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(String amount)? changeAmount,
    TResult Function()? addMoneyClicked,
    TResult Function(int amount)? handlePaymentSuccess,
    TResult Function(int amount, String message)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (handlePaymentFailed != null) {
      return handlePaymentFailed(amount, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PaymentMethod value) changePaymentMethod,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddMoneyClicked value) addMoneyClicked,
    required TResult Function(_HandlePaymentSuccess value) handlePaymentSuccess,
    required TResult Function(_HandlePaymentFailed value) handlePaymentFailed,
  }) {
    return handlePaymentFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PaymentMethod value)? changePaymentMethod,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult? Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult? Function(_HandlePaymentFailed value)? handlePaymentFailed,
  }) {
    return handlePaymentFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PaymentMethod value)? changePaymentMethod,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddMoneyClicked value)? addMoneyClicked,
    TResult Function(_HandlePaymentSuccess value)? handlePaymentSuccess,
    TResult Function(_HandlePaymentFailed value)? handlePaymentFailed,
    required TResult orElse(),
  }) {
    if (handlePaymentFailed != null) {
      return handlePaymentFailed(this);
    }
    return orElse();
  }
}

abstract class _HandlePaymentFailed implements AddMoneyEvent {
  const factory _HandlePaymentFailed(
      {required final int amount,
      required final String message}) = _$HandlePaymentFailedImpl;

  int get amount;
  String get message;
  @JsonKey(ignore: true)
  _$$HandlePaymentFailedImplCopyWith<_$HandlePaymentFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddMoneyState {
  PaymentMethod get selectedPaymentMethod => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMoneyStateCopyWith<AddMoneyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMoneyStateCopyWith<$Res> {
  factory $AddMoneyStateCopyWith(
          AddMoneyState value, $Res Function(AddMoneyState) then) =
      _$AddMoneyStateCopyWithImpl<$Res, AddMoneyState>;
  @useResult
  $Res call(
      {PaymentMethod selectedPaymentMethod,
      int amount,
      bool isLoading,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});

  $PaymentMethodCopyWith<$Res> get selectedPaymentMethod;
}

/// @nodoc
class _$AddMoneyStateCopyWithImpl<$Res, $Val extends AddMoneyState>
    implements $AddMoneyStateCopyWith<$Res> {
  _$AddMoneyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPaymentMethod = null,
    Object? amount = null,
    Object? isLoading = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get selectedPaymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.selectedPaymentMethod, (value) {
      return _then(_value.copyWith(selectedPaymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddMoneyStateImplCopyWith<$Res>
    implements $AddMoneyStateCopyWith<$Res> {
  factory _$$AddMoneyStateImplCopyWith(
          _$AddMoneyStateImpl value, $Res Function(_$AddMoneyStateImpl) then) =
      __$$AddMoneyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentMethod selectedPaymentMethod,
      int amount,
      bool isLoading,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});

  @override
  $PaymentMethodCopyWith<$Res> get selectedPaymentMethod;
}

/// @nodoc
class __$$AddMoneyStateImplCopyWithImpl<$Res>
    extends _$AddMoneyStateCopyWithImpl<$Res, _$AddMoneyStateImpl>
    implements _$$AddMoneyStateImplCopyWith<$Res> {
  __$$AddMoneyStateImplCopyWithImpl(
      _$AddMoneyStateImpl _value, $Res Function(_$AddMoneyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPaymentMethod = null,
    Object? amount = null,
    Object? isLoading = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_$AddMoneyStateImpl(
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$AddMoneyStateImpl implements _AddMoneyState {
  const _$AddMoneyStateImpl(
      {required this.selectedPaymentMethod,
      required this.amount,
      required this.isLoading,
      required this.apiFailureOrSuccessOption});

  @override
  final PaymentMethod selectedPaymentMethod;
  @override
  final int amount;
  @override
  final bool isLoading;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;

  @override
  String toString() {
    return 'AddMoneyState(selectedPaymentMethod: $selectedPaymentMethod, amount: $amount, isLoading: $isLoading, apiFailureOrSuccessOption: $apiFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMoneyStateImpl &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPaymentMethod, amount,
      isLoading, apiFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMoneyStateImplCopyWith<_$AddMoneyStateImpl> get copyWith =>
      __$$AddMoneyStateImplCopyWithImpl<_$AddMoneyStateImpl>(this, _$identity);
}

abstract class _AddMoneyState implements AddMoneyState {
  const factory _AddMoneyState(
      {required final PaymentMethod selectedPaymentMethod,
      required final int amount,
      required final bool isLoading,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption}) = _$AddMoneyStateImpl;

  @override
  PaymentMethod get selectedPaymentMethod;
  @override
  int get amount;
  @override
  bool get isLoading;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$AddMoneyStateImplCopyWith<_$AddMoneyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
