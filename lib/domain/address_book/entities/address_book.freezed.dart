// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressBook {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get pincode => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressBookCopyWith<AddressBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressBookCopyWith<$Res> {
  factory $AddressBookCopyWith(
          AddressBook value, $Res Function(AddressBook) then) =
      _$AddressBookCopyWithImpl<$Res, AddressBook>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String fullName,
      String phoneNumber,
      String pincode,
      String address,
      bool isDefault});
}

/// @nodoc
class _$AddressBookCopyWithImpl<$Res, $Val extends AddressBook>
    implements $AddressBookCopyWith<$Res> {
  _$AddressBookCopyWithImpl(this._value, this._then);

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
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressBookImplCopyWith<$Res>
    implements $AddressBookCopyWith<$Res> {
  factory _$$AddressBookImplCopyWith(
          _$AddressBookImpl value, $Res Function(_$AddressBookImpl) then) =
      __$$AddressBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String fullName,
      String phoneNumber,
      String pincode,
      String address,
      bool isDefault});
}

/// @nodoc
class __$$AddressBookImplCopyWithImpl<$Res>
    extends _$AddressBookCopyWithImpl<$Res, _$AddressBookImpl>
    implements _$$AddressBookImplCopyWith<$Res> {
  __$$AddressBookImplCopyWithImpl(
      _$AddressBookImpl _value, $Res Function(_$AddressBookImpl) _then)
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
    return _then(_$AddressBookImpl(
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
              as bool,
    ));
  }
}

/// @nodoc

class _$AddressBookImpl extends _AddressBook {
  _$AddressBookImpl(
      {required this.id,
      required this.userId,
      required this.fullName,
      required this.phoneNumber,
      required this.pincode,
      required this.address,
      required this.isDefault})
      : super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String pincode;
  @override
  final String address;
  @override
  final bool isDefault;

  @override
  String toString() {
    return 'AddressBook(id: $id, userId: $userId, fullName: $fullName, phoneNumber: $phoneNumber, pincode: $pincode, address: $address, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressBookImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, fullName,
      phoneNumber, pincode, address, isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressBookImplCopyWith<_$AddressBookImpl> get copyWith =>
      __$$AddressBookImplCopyWithImpl<_$AddressBookImpl>(this, _$identity);
}

abstract class _AddressBook extends AddressBook {
  factory _AddressBook(
      {required final String id,
      required final String userId,
      required final String fullName,
      required final String phoneNumber,
      required final String pincode,
      required final String address,
      required final bool isDefault}) = _$AddressBookImpl;
  _AddressBook._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get pincode;
  @override
  String get address;
  @override
  bool get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$AddressBookImplCopyWith<_$AddressBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
