import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';

class ConfirmAddressDeleteAlert extends StatelessWidget {
  final String addressId;
  const ConfirmAddressDeleteAlert({
    super.key,
    required this.addressId,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text(
        'Are you sure you want to delete this Address Book?',
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'No',
            style: TextStyle(color: Colors.grey),
          ),
          onPressed: () => context.router.maybePop(),
        ),
        TextButton(
          child: const Text(
            'Yes',
            style: TextStyle(color: Colors.red),
          ),
          onPressed: () {
            context.read<AddressBookBloc>().add(
                  AddressBookEvent.deleteAddressBook(id: addressId),
                );
            context.router.maybePop();
          },
        ),
      ],
    );
  }
}
