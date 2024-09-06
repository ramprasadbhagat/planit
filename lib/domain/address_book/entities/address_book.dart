import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/address_book/entities/address_book_group.dart';

part 'address_book.freezed.dart';

@freezed
class AddressBook with _$AddressBook {
  const AddressBook._();
  factory AddressBook({
    required String id,
    required String userId,
    required String fullName,
    required String phoneNumber,
    required String pincode,
    required String address,
    required bool isDefault,
  }) = _AddressBook;
  factory AddressBook.empty() => AddressBook(
        address: '',
        fullName: '',
        id: '',
        isDefault: false,
        phoneNumber: '',
        pincode: '',
        userId: '',
      );

  bool get isEmpty => this == AddressBook.empty();
  bool get isNotEmpty => !isEmpty;
}

extension AddressBookExtension on List<AddressBook> {
  List<AddressBookGroup> get getAddressBookGroupList {
    return List<AddressBook>.from(this)
        .groupListsBy((item) => item.pincode)
        .entries
        .map(
          (entry) => AddressBookGroup(
            addressBookList: entry.value,
            pinCode: entry.key,
          ),
        )
        .toList();
  }
}
