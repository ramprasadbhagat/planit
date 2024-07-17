// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Complain {
  StringValue get userId => throw _privateConstructorUsedError;
  StringValue get orderId => throw _privateConstructorUsedError;
  StringValue get complainId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get complainContent => throw _privateConstructorUsedError;
  List<String> get complainImages => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplainCopyWith<Complain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplainCopyWith<$Res> {
  factory $ComplainCopyWith(Complain value, $Res Function(Complain) then) =
      _$ComplainCopyWithImpl<$Res, Complain>;
  @useResult
  $Res call(
      {StringValue userId,
      StringValue orderId,
      StringValue complainId,
      String name,
      String email,
      String complainContent,
      List<String> complainImages,
      DateTime createdAt});
}

/// @nodoc
class _$ComplainCopyWithImpl<$Res, $Val extends Complain>
    implements $ComplainCopyWith<$Res> {
  _$ComplainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? orderId = null,
    Object? complainId = null,
    Object? name = null,
    Object? email = null,
    Object? complainContent = null,
    Object? complainImages = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      complainId: null == complainId
          ? _value.complainId
          : complainId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      complainContent: null == complainContent
          ? _value.complainContent
          : complainContent // ignore: cast_nullable_to_non_nullable
              as String,
      complainImages: null == complainImages
          ? _value.complainImages
          : complainImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplainImplCopyWith<$Res>
    implements $ComplainCopyWith<$Res> {
  factory _$$ComplainImplCopyWith(
          _$ComplainImpl value, $Res Function(_$ComplainImpl) then) =
      __$$ComplainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue userId,
      StringValue orderId,
      StringValue complainId,
      String name,
      String email,
      String complainContent,
      List<String> complainImages,
      DateTime createdAt});
}

/// @nodoc
class __$$ComplainImplCopyWithImpl<$Res>
    extends _$ComplainCopyWithImpl<$Res, _$ComplainImpl>
    implements _$$ComplainImplCopyWith<$Res> {
  __$$ComplainImplCopyWithImpl(
      _$ComplainImpl _value, $Res Function(_$ComplainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? orderId = null,
    Object? complainId = null,
    Object? name = null,
    Object? email = null,
    Object? complainContent = null,
    Object? complainImages = null,
    Object? createdAt = null,
  }) {
    return _then(_$ComplainImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      complainId: null == complainId
          ? _value.complainId
          : complainId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      complainContent: null == complainContent
          ? _value.complainContent
          : complainContent // ignore: cast_nullable_to_non_nullable
              as String,
      complainImages: null == complainImages
          ? _value._complainImages
          : complainImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ComplainImpl extends _Complain {
  const _$ComplainImpl(
      {required this.userId,
      required this.orderId,
      required this.complainId,
      required this.name,
      required this.email,
      required this.complainContent,
      required final List<String> complainImages,
      required this.createdAt})
      : _complainImages = complainImages,
        super._();

  @override
  final StringValue userId;
  @override
  final StringValue orderId;
  @override
  final StringValue complainId;
  @override
  final String name;
  @override
  final String email;
  @override
  final String complainContent;
  final List<String> _complainImages;
  @override
  List<String> get complainImages {
    if (_complainImages is EqualUnmodifiableListView) return _complainImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_complainImages);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Complain(userId: $userId, orderId: $orderId, complainId: $complainId, name: $name, email: $email, complainContent: $complainContent, complainImages: $complainImages, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplainImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.complainId, complainId) ||
                other.complainId == complainId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.complainContent, complainContent) ||
                other.complainContent == complainContent) &&
            const DeepCollectionEquality()
                .equals(other._complainImages, _complainImages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      orderId,
      complainId,
      name,
      email,
      complainContent,
      const DeepCollectionEquality().hash(_complainImages),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplainImplCopyWith<_$ComplainImpl> get copyWith =>
      __$$ComplainImplCopyWithImpl<_$ComplainImpl>(this, _$identity);
}

abstract class _Complain extends Complain {
  const factory _Complain(
      {required final StringValue userId,
      required final StringValue orderId,
      required final StringValue complainId,
      required final String name,
      required final String email,
      required final String complainContent,
      required final List<String> complainImages,
      required final DateTime createdAt}) = _$ComplainImpl;
  const _Complain._() : super._();

  @override
  StringValue get userId;
  @override
  StringValue get orderId;
  @override
  StringValue get complainId;
  @override
  String get name;
  @override
  String get email;
  @override
  String get complainContent;
  @override
  List<String> get complainImages;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ComplainImplCopyWith<_$ComplainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
