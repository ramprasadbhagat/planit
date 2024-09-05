import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/address_book/repository/i_address_book_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';

part 'address_book_event.dart';
part 'address_book_state.dart';
part 'address_book_bloc.freezed.dart';

class AddressBookBloc extends Bloc<AddressBookEvent, AddressBookState> {
  final IAddressBookRepository repository;
  AddressBookBloc({required this.repository})
      : super(AddressBookState.initial()) {
    on<AddressBookEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    AddressBookEvent event,
    Emitter<AddressBookState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(AddressBookState.initial()),
      fetch: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getAddressList();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (list) => emit(
            state.copyWith(
              isFetching: false,
              addressList: list,
              selectedAddress: list
                      .where((element) => element.isDefault)
                      .toList()
                      .isEmpty
                  ? list.first
                  : list.where((element) => element.isDefault).toList().first,
              apiFailureOrSuccessOption: none(),
            ),
          ),
        );
      },
      makeDefaultAddress: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.makeDefaultAddress(
          id: e.id,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (defaultAddress) => add(const _Fetch()),
        );
      },
      addAddressBook: (e) async {
        emit(
          state.copyWith(
            isSubmitting: true,
            apiFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await repository.addAddressBook(
          addressBook: e.addressBook,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isSubmitting: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (address) async {
            emit(
              state.copyWith(
                isSubmitting: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
            if (e.isMakeDefault) {
              add(const _FetchFirstAndMarkDefault());
            } else {
              add(const _Fetch());
            }
          },
        );
      },
      deleteAddressBook: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.deleteAddressBook(
          id: e.id,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (deleted) => add(const _Fetch()),
        );
      },
      editAddressBook: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.editAddressBook(
          addressBook: e.addressBook,
        );
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (edited) => add(const _Fetch()),
        );
      },
      selectAddress: (value) {
        emit(state.copyWith(selectedAddress: value.addressBook));
      },
      updateCurrentPinCode: (value) {
        emit(state.copyWith(currentSelectedPinCode: value.pinCode));
      },
      fetchFirstAndMarkDefault: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
            apiFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await repository.getAddressList();
        failureOrSuccess.fold(
            (failure) => emit(
                  state.copyWith(
                    isFetching: false,
                    apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                  ),
                ), (list) {
          add(_MakeDefaultAddress(id: list[0].id));
        });
      },
    );
  }
}
