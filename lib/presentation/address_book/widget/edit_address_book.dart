import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/presentation/address_book/widget/custom_text_field.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';

class EditAddressBookSheet extends StatefulWidget {
  final AddressBook addressBook;
  const EditAddressBookSheet({
    super.key,
    required this.addressBook,
  });

  @override
  State<EditAddressBookSheet> createState() => _EditAddressBookSheetState();
}

class _EditAddressBookSheetState extends State<EditAddressBookSheet> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final pincodeController = TextEditingController();
  final addressController = TextEditingController();
  final mobileController = TextEditingController();

  @override
  void initState() {
    nameController.text = widget.addressBook.fullName;
    pincodeController.text = widget.addressBook.pincode;
    mobileController.text = widget.addressBook.phoneNumber;
    addressController.text = widget.addressBook.address;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Add Adresss Book',
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: nameController,
                      hintText: 'Name',
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.trim() == '') {
                          return "name can't be empty";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: pincodeController,
                      hintText: 'Pin Code',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim() == '') {
                          return "pin code can't be empty";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: addressController,
                      hintText: 'Address',
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.trim() == '') {
                          return "address can't be empty";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: mobileController,
                      hintText: 'Mobile Number',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim() == '') {
                          return "mobile number can't be empty";
                        } else if (value.trim().length < 10) {
                          return 'enter valid mobile number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<AddressBookBloc>().add(
                            AddressBookEvent.editAddressBook(
                              addressBook: widget.addressBook.copyWith(
                                address: addressController.text,
                                fullName: nameController.text,
                                phoneNumber: mobileController.text,
                                pincode: pincodeController.text,
                              ),
                            ),
                          );
                      FocusScope.of(context).unfocus();
                      context.router.maybePop();
                      CustomSnackbar.showSuccessMessage(
                        context,
                        StringConstant.addressBookEditedSuccessfully,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: AppColors.black,
                    maximumSize: const Size(330, 50),
                  ),
                  child: const Text('Edit Address'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
