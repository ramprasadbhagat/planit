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
  @JsonKey(name: 'rate', defaultValue: 0, readValue: intReadValue)
  int get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortDescription', defaultValue: '')
  String get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', defaultValue: '')
  String get type => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'rate', defaultValue: 0, readValue: intReadValue) int rate,
      @JsonKey(name: 'shortDescription', defaultValue: '')
      String shortDescription,
      @JsonKey(name: 'type', defaultValue: '') String type});
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
    Object? rate = null,
    Object? shortDescription = null,
    Object? type = null,
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
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'rate', defaultValue: 0, readValue: intReadValue) int rate,
      @JsonKey(name: 'shortDescription', defaultValue: '')
      String shortDescription,
      @JsonKey(name: 'type', defaultValue: '') String type});
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
    Object? rate = null,
    Object? shortDescription = null,
    Object? type = null,
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
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'rate', defaultValue: 0, readValue: intReadValue)
      required this.rate,
      @JsonKey(name: 'shortDescription', defaultValue: '')
      required this.shortDescription,
      @JsonKey(name: 'type', defaultValue: '') required this.type})
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
  @JsonKey(name: 'rate', defaultValue: 0, readValue: intReadValue)
  final int rate;
  @override
  @JsonKey(name: 'shortDescription', defaultValue: '')
  final String shortDescription;
  @override
  @JsonKey(name: 'type', defaultValue: '')
  final String type;

  @override
  String toString() {
    return 'CouponDto(id: $id, couponCode: $couponCode, rate: $rate, shortDescription: $shortDescription, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, couponCode, rate, shortDescription, type);

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
      @JsonKey(name: 'rate', defaultValue: 0, readValue: intReadValue)
      required final int rate,
      @JsonKey(name: 'shortDescription', defaultValue: '')
      required final String shortDescription,
      @JsonKey(name: 'type', defaultValue: '')
      required final String type}) = _$CouponDtoImpl;
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
  @JsonKey(name: 'rate', defaultValue: 0, readValue: intReadValue)
  int get rate;
  @override
  @JsonKey(name: 'shortDescription', defaultValue: '')
  String get shortDescription;
  @override
  @JsonKey(name: 'type', defaultValue: '')
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$CouponDtoImplCopyWith<_$CouponDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
