// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complain_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComplainDto _$ComplainDtoFromJson(Map<String, dynamic> json) {
  return _ComplainDto.fromJson(json);
}

/// @nodoc
mixin _$ComplainDto {
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id', defaultValue: '')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id', defaultValue: '')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'complainContent', defaultValue: '')
  String get complainContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'complainImages', defaultValue: [])
  List<String> get complainImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplainDtoCopyWith<ComplainDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplainDtoCopyWith<$Res> {
  factory $ComplainDtoCopyWith(
          ComplainDto value, $Res Function(ComplainDto) then) =
      _$ComplainDtoCopyWithImpl<$Res, ComplainDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'user_id', defaultValue: '') String userId,
      @JsonKey(name: 'order_id', defaultValue: '') String orderId,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String email,
      @JsonKey(name: 'complainContent', defaultValue: '')
      String complainContent,
      @JsonKey(name: 'complainImages', defaultValue: [])
      List<String> complainImages,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$ComplainDtoCopyWithImpl<$Res, $Val extends ComplainDto>
    implements $ComplainDtoCopyWith<$Res> {
  _$ComplainDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? orderId = null,
    Object? name = null,
    Object? email = null,
    Object? complainContent = null,
    Object? complainImages = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplainDtoImplCopyWith<$Res>
    implements $ComplainDtoCopyWith<$Res> {
  factory _$$ComplainDtoImplCopyWith(
          _$ComplainDtoImpl value, $Res Function(_$ComplainDtoImpl) then) =
      __$$ComplainDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'user_id', defaultValue: '') String userId,
      @JsonKey(name: 'order_id', defaultValue: '') String orderId,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String email,
      @JsonKey(name: 'complainContent', defaultValue: '')
      String complainContent,
      @JsonKey(name: 'complainImages', defaultValue: [])
      List<String> complainImages,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$ComplainDtoImplCopyWithImpl<$Res>
    extends _$ComplainDtoCopyWithImpl<$Res, _$ComplainDtoImpl>
    implements _$$ComplainDtoImplCopyWith<$Res> {
  __$$ComplainDtoImplCopyWithImpl(
      _$ComplainDtoImpl _value, $Res Function(_$ComplainDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? orderId = null,
    Object? name = null,
    Object? email = null,
    Object? complainContent = null,
    Object? complainImages = null,
    Object? createdAt = null,
  }) {
    return _then(_$ComplainDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComplainDtoImpl extends _ComplainDto {
  const _$ComplainDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'user_id', defaultValue: '') required this.userId,
      @JsonKey(name: 'order_id', defaultValue: '') required this.orderId,
      @JsonKey(defaultValue: '') required this.name,
      @JsonKey(defaultValue: '') required this.email,
      @JsonKey(name: 'complainContent', defaultValue: '')
      required this.complainContent,
      @JsonKey(name: 'complainImages', defaultValue: [])
      required final List<String> complainImages,
      @JsonKey(name: 'created_at') required this.createdAt})
      : _complainImages = complainImages,
        super._();

  factory _$ComplainDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplainDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'user_id', defaultValue: '')
  final String userId;
  @override
  @JsonKey(name: 'order_id', defaultValue: '')
  final String orderId;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'complainContent', defaultValue: '')
  final String complainContent;
  final List<String> _complainImages;
  @override
  @JsonKey(name: 'complainImages', defaultValue: [])
  List<String> get complainImages {
    if (_complainImages is EqualUnmodifiableListView) return _complainImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_complainImages);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'ComplainDto(id: $id, userId: $userId, orderId: $orderId, name: $name, email: $email, complainContent: $complainContent, complainImages: $complainImages, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplainDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.complainContent, complainContent) ||
                other.complainContent == complainContent) &&
            const DeepCollectionEquality()
                .equals(other._complainImages, _complainImages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      orderId,
      name,
      email,
      complainContent,
      const DeepCollectionEquality().hash(_complainImages),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplainDtoImplCopyWith<_$ComplainDtoImpl> get copyWith =>
      __$$ComplainDtoImplCopyWithImpl<_$ComplainDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplainDtoImplToJson(
      this,
    );
  }
}

abstract class _ComplainDto extends ComplainDto {
  const factory _ComplainDto(
      {@JsonKey(name: '_id', defaultValue: '') required final String id,
      @JsonKey(name: 'user_id', defaultValue: '') required final String userId,
      @JsonKey(name: 'order_id', defaultValue: '')
      required final String orderId,
      @JsonKey(defaultValue: '') required final String name,
      @JsonKey(defaultValue: '') required final String email,
      @JsonKey(name: 'complainContent', defaultValue: '')
      required final String complainContent,
      @JsonKey(name: 'complainImages', defaultValue: [])
      required final List<String> complainImages,
      @JsonKey(name: 'created_at')
      required final String createdAt}) = _$ComplainDtoImpl;
  const _ComplainDto._() : super._();

  factory _ComplainDto.fromJson(Map<String, dynamic> json) =
      _$ComplainDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'user_id', defaultValue: '')
  String get userId;
  @override
  @JsonKey(name: 'order_id', defaultValue: '')
  String get orderId;
  @override
  @JsonKey(defaultValue: '')
  String get name;
  @override
  @JsonKey(defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'complainContent', defaultValue: '')
  String get complainContent;
  @override
  @JsonKey(name: 'complainImages', defaultValue: [])
  List<String> get complainImages;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ComplainDtoImplCopyWith<_$ComplainDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
