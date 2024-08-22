// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentOptions {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  PrefillData get prefill => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentOptionsCopyWith<PaymentOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOptionsCopyWith<$Res> {
  factory $PaymentOptionsCopyWith(
          PaymentOptions value, $Res Function(PaymentOptions) then) =
      _$PaymentOptionsCopyWithImpl<$Res, PaymentOptions>;
  @useResult
  $Res call(
      {String name, String description, double amount, PrefillData prefill});

  $PrefillDataCopyWith<$Res> get prefill;
}

/// @nodoc
class _$PaymentOptionsCopyWithImpl<$Res, $Val extends PaymentOptions>
    implements $PaymentOptionsCopyWith<$Res> {
  _$PaymentOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? amount = null,
    Object? prefill = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      prefill: null == prefill
          ? _value.prefill
          : prefill // ignore: cast_nullable_to_non_nullable
              as PrefillData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrefillDataCopyWith<$Res> get prefill {
    return $PrefillDataCopyWith<$Res>(_value.prefill, (value) {
      return _then(_value.copyWith(prefill: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentOptionsImplCopyWith<$Res>
    implements $PaymentOptionsCopyWith<$Res> {
  factory _$$PaymentOptionsImplCopyWith(_$PaymentOptionsImpl value,
          $Res Function(_$PaymentOptionsImpl) then) =
      __$$PaymentOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String description, double amount, PrefillData prefill});

  @override
  $PrefillDataCopyWith<$Res> get prefill;
}

/// @nodoc
class __$$PaymentOptionsImplCopyWithImpl<$Res>
    extends _$PaymentOptionsCopyWithImpl<$Res, _$PaymentOptionsImpl>
    implements _$$PaymentOptionsImplCopyWith<$Res> {
  __$$PaymentOptionsImplCopyWithImpl(
      _$PaymentOptionsImpl _value, $Res Function(_$PaymentOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? amount = null,
    Object? prefill = null,
  }) {
    return _then(_$PaymentOptionsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      prefill: null == prefill
          ? _value.prefill
          : prefill // ignore: cast_nullable_to_non_nullable
              as PrefillData,
    ));
  }
}

/// @nodoc

class _$PaymentOptionsImpl implements _PaymentOptions {
  const _$PaymentOptionsImpl(
      {required this.name,
      required this.description,
      required this.amount,
      required this.prefill});

  @override
  final String name;
  @override
  final String description;
  @override
  final double amount;
  @override
  final PrefillData prefill;

  @override
  String toString() {
    return 'PaymentOptions(name: $name, description: $description, amount: $amount, prefill: $prefill)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentOptionsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.prefill, prefill) || other.prefill == prefill));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, amount, prefill);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentOptionsImplCopyWith<_$PaymentOptionsImpl> get copyWith =>
      __$$PaymentOptionsImplCopyWithImpl<_$PaymentOptionsImpl>(
          this, _$identity);
}

abstract class _PaymentOptions implements PaymentOptions {
  const factory _PaymentOptions(
      {required final String name,
      required final String description,
      required final double amount,
      required final PrefillData prefill}) = _$PaymentOptionsImpl;

  @override
  String get name;
  @override
  String get description;
  @override
  double get amount;
  @override
  PrefillData get prefill;
  @override
  @JsonKey(ignore: true)
  _$$PaymentOptionsImplCopyWith<_$PaymentOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrefillData {
  String get contact => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrefillDataCopyWith<PrefillData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefillDataCopyWith<$Res> {
  factory $PrefillDataCopyWith(
          PrefillData value, $Res Function(PrefillData) then) =
      _$PrefillDataCopyWithImpl<$Res, PrefillData>;
  @useResult
  $Res call({String contact, String? email});
}

/// @nodoc
class _$PrefillDataCopyWithImpl<$Res, $Val extends PrefillData>
    implements $PrefillDataCopyWith<$Res> {
  _$PrefillDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrefillDataImplCopyWith<$Res>
    implements $PrefillDataCopyWith<$Res> {
  factory _$$PrefillDataImplCopyWith(
          _$PrefillDataImpl value, $Res Function(_$PrefillDataImpl) then) =
      __$$PrefillDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contact, String? email});
}

/// @nodoc
class __$$PrefillDataImplCopyWithImpl<$Res>
    extends _$PrefillDataCopyWithImpl<$Res, _$PrefillDataImpl>
    implements _$$PrefillDataImplCopyWith<$Res> {
  __$$PrefillDataImplCopyWithImpl(
      _$PrefillDataImpl _value, $Res Function(_$PrefillDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? email = freezed,
  }) {
    return _then(_$PrefillDataImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PrefillDataImpl implements _PrefillData {
  const _$PrefillDataImpl({required this.contact, this.email});

  @override
  final String contact;
  @override
  final String? email;

  @override
  String toString() {
    return 'PrefillData(contact: $contact, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrefillDataImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrefillDataImplCopyWith<_$PrefillDataImpl> get copyWith =>
      __$$PrefillDataImplCopyWithImpl<_$PrefillDataImpl>(this, _$identity);
}

abstract class _PrefillData implements PrefillData {
  const factory _PrefillData(
      {required final String contact, final String? email}) = _$PrefillDataImpl;

  @override
  String get contact;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$PrefillDataImplCopyWith<_$PrefillDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
