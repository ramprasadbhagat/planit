// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressBookDto _$AddressBookDtoFromJson(Map<String, dynamic> json) {
  return _AddressBookDto.fromJson(json);
}

/// @nodoc
mixin _$AddressBookDto {
  @JsonKey(defaultValue: '', readValue: idFromJson)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id', defaultValue: '')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get pincode => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get isDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressBookDtoCopyWith<AddressBookDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressBookDtoCopyWith<$Res> {
  factory $AddressBookDtoCopyWith(
          AddressBookDto value, $Res Function(AddressBookDto) then) =
      _$AddressBookDtoCopyWithImpl<$Res, AddressBookDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '', readValue: idFromJson) String id,
      @JsonKey(name: 'user_id', defaultValue: '') String userId,
      @JsonKey(defaultValue: '') String fullName,
      @JsonKey(defaultValue: '') String phoneNumber,
      @JsonKey(defaultValue: '') String pincode,
      @JsonKey(defaultValue: '') String address,
      @JsonKey(defaultValue: 0) int isDefault});
}

/// @nodoc
class _$AddressBookDtoCopyWithImpl<$Res, $Val extends AddressBookDto>
    implements $AddressBookDtoCopyWith<$Res> {
  _$AddressBookDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? pincode = null,
    Object? address = null,
    Object? isDefault = null,
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
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressBookDtoImplCopyWith<$Res>
    implements $AddressBookDtoCopyWith<$Res> {
  factory _$$AddressBookDtoImplCopyWith(_$AddressBookDtoImpl value,
          $Res Function(_$AddressBookDtoImpl) then) =
      __$$AddressBookDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '', readValue: idFromJson) String id,
      @JsonKey(name: 'user_id', defaultValue: '') String userId,
      @JsonKey(defaultValue: '') String fullName,
      @JsonKey(defaultValue: '') String phoneNumber,
      @JsonKey(defaultValue: '') String pincode,
      @JsonKey(defaultValue: '') String address,
      @JsonKey(defaultValue: 0) int isDefault});
}

/// @nodoc
class __$$AddressBookDtoImplCopyWithImpl<$Res>
    extends _$AddressBookDtoCopyWithImpl<$Res, _$AddressBookDtoImpl>
    implements _$$AddressBookDtoImplCopyWith<$Res> {
  __$$AddressBookDtoImplCopyWithImpl(
      _$AddressBookDtoImpl _value, $Res Function(_$AddressBookDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? pincode = null,
    Object? address = null,
    Object? isDefault = null,
  }) {
    return _then(_$AddressBookDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressBookDtoImpl extends _AddressBookDto {
  _$AddressBookDtoImpl(
      {@JsonKey(defaultValue: '', readValue: idFromJson) required this.id,
      @JsonKey(name: 'user_id', defaultValue: '') required this.userId,
      @JsonKey(defaultValue: '') required this.fullName,
      @JsonKey(defaultValue: '') required this.phoneNumber,
      @JsonKey(defaultValue: '') required this.pincode,
      @JsonKey(defaultValue: '') required this.address,
      @JsonKey(defaultValue: 0) required this.isDefault})
      : super._();

  factory _$AddressBookDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressBookDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '', readValue: idFromJson)
  final String id;
  @override
  @JsonKey(name: 'user_id', defaultValue: '')
  final String userId;
  @override
  @JsonKey(defaultValue: '')
  final String fullName;
  @override
  @JsonKey(defaultValue: '')
  final String phoneNumber;
  @override
  @JsonKey(defaultValue: '')
  final String pincode;
  @override
  @JsonKey(defaultValue: '')
  final String address;
  @override
  @JsonKey(defaultValue: 0)
  final int isDefault;

  @override
  String toString() {
    return 'AddressBookDto(id: $id, userId: $userId, fullName: $fullName, phoneNumber: $phoneNumber, pincode: $pincode, address: $address, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressBookDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, fullName,
      phoneNumber, pincode, address, isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressBookDtoImplCopyWith<_$AddressBookDtoImpl> get copyWith =>
      __$$AddressBookDtoImplCopyWithImpl<_$AddressBookDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressBookDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressBookDto extends AddressBookDto {
  factory _AddressBookDto(
      {@JsonKey(defaultValue: '', readValue: idFromJson)
      required final String id,
      @JsonKey(name: 'user_id', defaultValue: '') required final String userId,
      @JsonKey(defaultValue: '') required final String fullName,
      @JsonKey(defaultValue: '') required final String phoneNumber,
      @JsonKey(defaultValue: '') required final String pincode,
      @JsonKey(defaultValue: '') required final String address,
      @JsonKey(defaultValue: 0)
      required final int isDefault}) = _$AddressBookDtoImpl;
  _AddressBookDto._() : super._();

  factory _AddressBookDto.fromJson(Map<String, dynamic> json) =
      _$AddressBookDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '', readValue: idFromJson)
  String get id;
  @override
  @JsonKey(name: 'user_id', defaultValue: '')
  String get userId;
  @override
  @JsonKey(defaultValue: '')
  String get fullName;
  @override
  @JsonKey(defaultValue: '')
  String get phoneNumber;
  @override
  @JsonKey(defaultValue: '')
  String get pincode;
  @override
  @JsonKey(defaultValue: '')
  String get address;
  @override
  @JsonKey(defaultValue: 0)
  int get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$AddressBookDtoImplCopyWith<_$AddressBookDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
