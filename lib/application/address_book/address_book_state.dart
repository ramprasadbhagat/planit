part of 'address_book_bloc.dart';

@freezed
class AddressBookState with _$AddressBookState {
  const AddressBookState._();
  const factory AddressBookState({
    required List<AddressBook> addressList,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required AddressBook selectedAddress,
  }) = _AddressBookState;

  factory AddressBookState.initial() => AddressBookState(
        addressList: [],
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        selectedAddress: AddressBook.empty(),
      );

  bool get isAdressEmpty => addressList.isEmpty;
}
