import 'package:freezed_annotation/freezed_annotation.dart';

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
}
