part of 'address_book_bloc.dart';

@freezed
class AddressBookState with _$AddressBookState {
  const AddressBookState._();
  const factory AddressBookState({
    required List<AddressBook> addressList,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required AddressBook selectedAddress,
    required bool isSubmitting,
  }) = _AddressBookState;

  factory AddressBookState.initial() => AddressBookState(
        addressList: [],
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        selectedAddress: AddressBook.empty(),
        isSubmitting: false,
      );

  bool get isAddressEmpty => addressList.isEmpty;

  bool isPinCodeNotAdded(String pinCode) =>
      pinCode.isNotEmpty &&
      !isAddressEmpty &&
      !addressList.any((e) => e.pincode.trim() == pinCode.trim());
}
