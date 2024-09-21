// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidInteger,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int min) subceedLength,
    required TResult Function(T failedValue) invalidDateValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidInteger,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue, int min)? subceedLength,
    TResult? Function(T failedValue)? invalidDateValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidInteger,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int min)? subceedLength,
    TResult Function(T failedValue)? invalidDateValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidInteger<T> value) invalidInteger,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(SubceedLength<T> value) subceedLength,
    required TResult Function(InvalidDateValue<T> value) invalidDateValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidInteger<T> value)? invalidInteger,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(SubceedLength<T> value)? subceedLength,
    TResult? Function(InvalidDateValue<T> value)? invalidDateValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidInteger<T> value)? invalidInteger,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(SubceedLength<T> value)? subceedLength,
    TResult Function(InvalidDateValue<T> value)? invalidDateValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidInteger,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int min) subceedLength,
    required TResult Function(T failedValue) invalidDateValue,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidInteger,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue, int min)? subceedLength,
    TResult? Function(T failedValue)? invalidDateValue,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidInteger,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int min)? subceedLength,
    TResult Function(T failedValue)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidInteger<T> value) invalidInteger,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(SubceedLength<T> value) subceedLength,
    required TResult Function(InvalidDateValue<T> value) invalidDateValue,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidInteger<T> value)? invalidInteger,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(SubceedLength<T> value)? subceedLength,
    TResult? Function(InvalidDateValue<T> value)? invalidDateValue,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidInteger<T> value)? invalidInteger,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(SubceedLength<T> value)? subceedLength,
    TResult Function(InvalidDateValue<T> value)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidIntegerImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidIntegerImplCopyWith(_$InvalidIntegerImpl<T> value,
          $Res Function(_$InvalidIntegerImpl<T>) then) =
      __$$InvalidIntegerImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidIntegerImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidIntegerImpl<T>>
    implements _$$InvalidIntegerImplCopyWith<T, $Res> {
  __$$InvalidIntegerImplCopyWithImpl(_$InvalidIntegerImpl<T> _value,
      $Res Function(_$InvalidIntegerImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidIntegerImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidIntegerImpl<T> implements InvalidInteger<T> {
  const _$InvalidIntegerImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidInteger(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidIntegerImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidIntegerImplCopyWith<T, _$InvalidIntegerImpl<T>> get copyWith =>
      __$$InvalidIntegerImplCopyWithImpl<T, _$InvalidIntegerImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidInteger,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int min) subceedLength,
    required TResult Function(T failedValue) invalidDateValue,
  }) {
    return invalidInteger(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidInteger,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue, int min)? subceedLength,
    TResult? Function(T failedValue)? invalidDateValue,
  }) {
    return invalidInteger?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidInteger,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int min)? subceedLength,
    TResult Function(T failedValue)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (invalidInteger != null) {
      return invalidInteger(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidInteger<T> value) invalidInteger,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(SubceedLength<T> value) subceedLength,
    required TResult Function(InvalidDateValue<T> value) invalidDateValue,
  }) {
    return invalidInteger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidInteger<T> value)? invalidInteger,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(SubceedLength<T> value)? subceedLength,
    TResult? Function(InvalidDateValue<T> value)? invalidDateValue,
  }) {
    return invalidInteger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidInteger<T> value)? invalidInteger,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(SubceedLength<T> value)? subceedLength,
    TResult Function(InvalidDateValue<T> value)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (invalidInteger != null) {
      return invalidInteger(this);
    }
    return orElse();
  }
}

abstract class InvalidInteger<T> implements ValueFailure<T> {
  const factory InvalidInteger({required final T failedValue}) =
      _$InvalidIntegerImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidIntegerImplCopyWith<T, _$InvalidIntegerImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidInteger,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int min) subceedLength,
    required TResult Function(T failedValue) invalidDateValue,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidInteger,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue, int min)? subceedLength,
    TResult? Function(T failedValue)? invalidDateValue,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidInteger,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int min)? subceedLength,
    TResult Function(T failedValue)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidInteger<T> value) invalidInteger,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(SubceedLength<T> value) subceedLength,
    required TResult Function(InvalidDateValue<T> value) invalidDateValue,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidInteger<T> value)? invalidInteger,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(SubceedLength<T> value)? subceedLength,
    TResult? Function(InvalidDateValue<T> value)? invalidDateValue,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidInteger<T> value)? invalidInteger,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(SubceedLength<T> value)? subceedLength,
    TResult Function(InvalidDateValue<T> value)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubceedLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$SubceedLengthImplCopyWith(_$SubceedLengthImpl<T> value,
          $Res Function(_$SubceedLengthImpl<T>) then) =
      __$$SubceedLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int min});
}

/// @nodoc
class __$$SubceedLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$SubceedLengthImpl<T>>
    implements _$$SubceedLengthImplCopyWith<T, $Res> {
  __$$SubceedLengthImplCopyWithImpl(_$SubceedLengthImpl<T> _value,
      $Res Function(_$SubceedLengthImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = null,
  }) {
    return _then(_$SubceedLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SubceedLengthImpl<T> implements SubceedLength<T> {
  const _$SubceedLengthImpl({required this.failedValue, required this.min});

  @override
  final T failedValue;
  @override
  final int min;

  @override
  String toString() {
    return 'ValueFailure<$T>.subceedLength(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubceedLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.min, min) || other.min == min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), min);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubceedLengthImplCopyWith<T, _$SubceedLengthImpl<T>> get copyWith =>
      __$$SubceedLengthImplCopyWithImpl<T, _$SubceedLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidInteger,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int min) subceedLength,
    required TResult Function(T failedValue) invalidDateValue,
  }) {
    return subceedLength(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidInteger,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue, int min)? subceedLength,
    TResult? Function(T failedValue)? invalidDateValue,
  }) {
    return subceedLength?.call(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidInteger,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int min)? subceedLength,
    TResult Function(T failedValue)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (subceedLength != null) {
      return subceedLength(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidInteger<T> value) invalidInteger,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(SubceedLength<T> value) subceedLength,
    required TResult Function(InvalidDateValue<T> value) invalidDateValue,
  }) {
    return subceedLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidInteger<T> value)? invalidInteger,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(SubceedLength<T> value)? subceedLength,
    TResult? Function(InvalidDateValue<T> value)? invalidDateValue,
  }) {
    return subceedLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidInteger<T> value)? invalidInteger,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(SubceedLength<T> value)? subceedLength,
    TResult Function(InvalidDateValue<T> value)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (subceedLength != null) {
      return subceedLength(this);
    }
    return orElse();
  }
}

abstract class SubceedLength<T> implements ValueFailure<T> {
  const factory SubceedLength(
      {required final T failedValue,
      required final int min}) = _$SubceedLengthImpl<T>;

  @override
  T get failedValue;
  int get min;
  @override
  @JsonKey(ignore: true)
  _$$SubceedLengthImplCopyWith<T, _$SubceedLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidDateValueImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidDateValueImplCopyWith(_$InvalidDateValueImpl<T> value,
          $Res Function(_$InvalidDateValueImpl<T>) then) =
      __$$InvalidDateValueImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidDateValueImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidDateValueImpl<T>>
    implements _$$InvalidDateValueImplCopyWith<T, $Res> {
  __$$InvalidDateValueImplCopyWithImpl(_$InvalidDateValueImpl<T> _value,
      $Res Function(_$InvalidDateValueImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidDateValueImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidDateValueImpl<T> implements InvalidDateValue<T> {
  const _$InvalidDateValueImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDateValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidDateValueImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidDateValueImplCopyWith<T, _$InvalidDateValueImpl<T>> get copyWith =>
      __$$InvalidDateValueImplCopyWithImpl<T, _$InvalidDateValueImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidInteger,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int min) subceedLength,
    required TResult Function(T failedValue) invalidDateValue,
  }) {
    return invalidDateValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidInteger,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue, int min)? subceedLength,
    TResult? Function(T failedValue)? invalidDateValue,
  }) {
    return invalidDateValue?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidInteger,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int min)? subceedLength,
    TResult Function(T failedValue)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (invalidDateValue != null) {
      return invalidDateValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidInteger<T> value) invalidInteger,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(SubceedLength<T> value) subceedLength,
    required TResult Function(InvalidDateValue<T> value) invalidDateValue,
  }) {
    return invalidDateValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidInteger<T> value)? invalidInteger,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(SubceedLength<T> value)? subceedLength,
    TResult? Function(InvalidDateValue<T> value)? invalidDateValue,
  }) {
    return invalidDateValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidInteger<T> value)? invalidInteger,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(SubceedLength<T> value)? subceedLength,
    TResult Function(InvalidDateValue<T> value)? invalidDateValue,
    required TResult orElse(),
  }) {
    if (invalidDateValue != null) {
      return invalidDateValue(this);
    }
    return orElse();
  }
}

abstract class InvalidDateValue<T> implements ValueFailure<T> {
  const factory InvalidDateValue({required final T failedValue}) =
      _$InvalidDateValueImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidDateValueImplCopyWith<T, _$InvalidDateValueImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
