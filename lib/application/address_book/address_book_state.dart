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
    required String currentSelectedPinCode,
  }) = _AddressBookState;

  factory AddressBookState.initial() => AddressBookState(
        addressList: [],
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        selectedAddress: AddressBook.empty(),
        isSubmitting: false,
        currentSelectedPinCode: '',
      );

  bool get isAddressEmpty => addressList.isEmpty;

  bool get isPinCodeAddedToAddressBook =>
      currentSelectedPinCode.isNotEmpty &&
      !isAddressEmpty &&
      addressList.any((e) => e.pincode.trim() == currentSelectedPinCode.trim());

  bool get isSelectedAddressAssociatedWithPin =>
      selectedAddress.pincode == currentSelectedPinCode;
}
