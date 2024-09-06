// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_book_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressBookGroup {
  String get pinCode => throw _privateConstructorUsedError;
  List<AddressBook> get addressBookList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressBookGroupCopyWith<AddressBookGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressBookGroupCopyWith<$Res> {
  factory $AddressBookGroupCopyWith(
          AddressBookGroup value, $Res Function(AddressBookGroup) then) =
      _$AddressBookGroupCopyWithImpl<$Res, AddressBookGroup>;
  @useResult
  $Res call({String pinCode, List<AddressBook> addressBookList});
}

/// @nodoc
class _$AddressBookGroupCopyWithImpl<$Res, $Val extends AddressBookGroup>
    implements $AddressBookGroupCopyWith<$Res> {
  _$AddressBookGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
    Object? addressBookList = null,
  }) {
    return _then(_value.copyWith(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      addressBookList: null == addressBookList
          ? _value.addressBookList
          : addressBookList // ignore: cast_nullable_to_non_nullable
              as List<AddressBook>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressBookGroupImplCopyWith<$Res>
    implements $AddressBookGroupCopyWith<$Res> {
  factory _$$AddressBookGroupImplCopyWith(_$AddressBookGroupImpl value,
          $Res Function(_$AddressBookGroupImpl) then) =
      __$$AddressBookGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pinCode, List<AddressBook> addressBookList});
}

/// @nodoc
class __$$AddressBookGroupImplCopyWithImpl<$Res>
    extends _$AddressBookGroupCopyWithImpl<$Res, _$AddressBookGroupImpl>
    implements _$$AddressBookGroupImplCopyWith<$Res> {
  __$$AddressBookGroupImplCopyWithImpl(_$AddressBookGroupImpl _value,
      $Res Function(_$AddressBookGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
    Object? addressBookList = null,
  }) {
    return _then(_$AddressBookGroupImpl(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      addressBookList: null == addressBookList
          ? _value._addressBookList
          : addressBookList // ignore: cast_nullable_to_non_nullable
              as List<AddressBook>,
    ));
  }
}

/// @nodoc

class _$AddressBookGroupImpl implements _AddressBookGroup {
  _$AddressBookGroupImpl(
      {required this.pinCode, required final List<AddressBook> addressBookList})
      : _addressBookList = addressBookList;

  @override
  final String pinCode;
  final List<AddressBook> _addressBookList;
  @override
  List<AddressBook> get addressBookList {
    if (_addressBookList is EqualUnmodifiableListView) return _addressBookList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressBookList);
  }

  @override
  String toString() {
    return 'AddressBookGroup(pinCode: $pinCode, addressBookList: $addressBookList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressBookGroupImpl &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            const DeepCollectionEquality()
                .equals(other._addressBookList, _addressBookList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinCode,
      const DeepCollectionEquality().hash(_addressBookList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressBookGroupImplCopyWith<_$AddressBookGroupImpl> get copyWith =>
      __$$AddressBookGroupImplCopyWithImpl<_$AddressBookGroupImpl>(
          this, _$identity);
}

abstract class _AddressBookGroup implements AddressBookGroup {
  factory _AddressBookGroup(
          {required final String pinCode,
          required final List<AddressBook> addressBookList}) =
      _$AddressBookGroupImpl;

  @override
  String get pinCode;
  @override
  List<AddressBook> get addressBookList;
  @override
  @JsonKey(ignore: true)
  _$$AddressBookGroupImplCopyWith<_$AddressBookGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
