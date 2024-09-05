part of 'address_book_bloc.dart';

@freezed
class AddressBookEvent with _$AddressBookEvent {
  const factory AddressBookEvent.initialized() = _Initialized;
  const factory AddressBookEvent.fetch() = _Fetch;
  const factory AddressBookEvent.addAddressBook({
    required AddressBook addressBook,
    required bool isMakeDefault,
  }) = _AddAdressBook;
  const factory AddressBookEvent.makeDefaultAddress({
    required String id,
  }) = _MakeDefaultAddress;
  const factory AddressBookEvent.deleteAddressBook({
    required String id,
  }) = _DeleteAddressBook;
  const factory AddressBookEvent.editAddressBook({
    required AddressBook addressBook,
  }) = _EditAddressBook;
  const factory AddressBookEvent.selectAddress({
    required AddressBook addressBook,
  }) = _SelectAddressBook;
  const factory AddressBookEvent.updateCurrentPinCode({
    required String pinCode,
  }) = _UpdateCurrentPinCode;
  const factory AddressBookEvent.fetchFirstAndMarkDefault() =
      _FetchFirstAndMarkDefault;
}
