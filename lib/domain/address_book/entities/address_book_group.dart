import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';

part 'address_book_group.freezed.dart';

@freezed
class AddressBookGroup with _$AddressBookGroup {
  factory AddressBookGroup({
    required String pinCode,
    required List<AddressBook> addressBookList,
  }) = _AddressBookGroup;

  factory AddressBookGroup.empty() => AddressBookGroup(
        addressBookList: <AddressBook>[],
        pinCode: '',
      );
}
