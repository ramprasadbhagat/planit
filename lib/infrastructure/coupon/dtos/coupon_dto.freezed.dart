// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CouponDto _$CouponDtoFromJson(Map<String, dynamic> json) {
  return _CouponDto.fromJson(json);
}

/// @nodoc
mixin _$CouponDto {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponCode', defaultValue: '')
  String get couponCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortDescription', defaultValue: '')
  String get shortDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponDtoCopyWith<CouponDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponDtoCopyWith<$Res> {
  factory $CouponDtoCopyWith(CouponDto value, $Res Function(CouponDto) then) =
      _$CouponDtoCopyWithImpl<$Res, CouponDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'couponCode', defaultValue: '') String couponCode,
      @JsonKey(name: 'amount', defaultValue: '') String amount,
      @JsonKey(name: 'shortDescription', defaultValue: '')
      String shortDescription});
}

/// @nodoc
class _$CouponDtoCopyWithImpl<$Res, $Val extends CouponDto>
    implements $CouponDtoCopyWith<$Res> {
  _$CouponDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? couponCode = null,
    Object? amount = null,
    Object? shortDescription = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponDtoImplCopyWith<$Res>
    implements $CouponDtoCopyWith<$Res> {
  factory _$$CouponDtoImplCopyWith(
          _$CouponDtoImpl value, $Res Function(_$CouponDtoImpl) then) =
      __$$CouponDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'couponCode', defaultValue: '') String couponCode,
      @JsonKey(name: 'amount', defaultValue: '') String amount,
      @JsonKey(name: 'shortDescription', defaultValue: '')
      String shortDescription});
}

/// @nodoc
class __$$CouponDtoImplCopyWithImpl<$Res>
    extends _$CouponDtoCopyWithImpl<$Res, _$CouponDtoImpl>
    implements _$$CouponDtoImplCopyWith<$Res> {
  __$$CouponDtoImplCopyWithImpl(
      _$CouponDtoImpl _value, $Res Function(_$CouponDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? couponCode = null,
    Object? amount = null,
    Object? shortDescription = null,
  }) {
    return _then(_$CouponDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponDtoImpl extends _CouponDto {
  const _$CouponDtoImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'couponCode', defaultValue: '') required this.couponCode,
      @JsonKey(name: 'amount', defaultValue: '') required this.amount,
      @JsonKey(name: 'shortDescription', defaultValue: '')
      required this.shortDescription})
      : super._();

  factory _$CouponDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'couponCode', defaultValue: '')
  final String couponCode;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  final String amount;
  @override
  @JsonKey(name: 'shortDescription', defaultValue: '')
  final String shortDescription;

  @override
  String toString() {
    return 'CouponDto(id: $id, couponCode: $couponCode, amount: $amount, shortDescription: $shortDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, couponCode, amount, shortDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponDtoImplCopyWith<_$CouponDtoImpl> get copyWith =>
      __$$CouponDtoImplCopyWithImpl<_$CouponDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponDtoImplToJson(
      this,
    );
  }
}

abstract class _CouponDto extends CouponDto {
  const factory _CouponDto(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'couponCode', defaultValue: '')
      required final String couponCode,
      @JsonKey(name: 'amount', defaultValue: '') required final String amount,
      @JsonKey(name: 'shortDescription', defaultValue: '')
      required final String shortDescription}) = _$CouponDtoImpl;
  const _CouponDto._() : super._();

  factory _CouponDto.fromJson(Map<String, dynamic> json) =
      _$CouponDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'couponCode', defaultValue: '')
  String get couponCode;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount;
  @override
  @JsonKey(name: 'shortDescription', defaultValue: '')
  String get shortDescription;
  @override
  @JsonKey(ignore: true)
  _$$CouponDtoImplCopyWith<_$CouponDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}