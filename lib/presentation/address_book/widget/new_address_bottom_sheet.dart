import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/address_book/widget/custom_checkbox.dart';
import 'package:planit/presentation/address_book/widget/custom_text_field.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/core/pin_code_error/pin_code_error_message.dart';
import 'package:planit/presentation/core/pin_code_error/pin_code_status.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';

class NewAddressBookSheet extends StatefulWidget {
  const NewAddressBookSheet({super.key});

  @override
  State<NewAddressBookSheet> createState() => _NewAddressBookSheetState();
}

class _NewAddressBookSheetState extends State<NewAddressBookSheet> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController pincodeController = TextEditingController();
  late TextEditingController addressController = TextEditingController();
  late TextEditingController mobileController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<PincodeBloc>().add(
          const PincodeEvent.resetVerificationStatus(),
        );
    nameController = TextEditingController();
    addressController = TextEditingController();
    mobileController = TextEditingController();
    pincodeController =
        TextEditingController(text: context.read<PincodeBloc>().state.pincode);
  }

  bool isDefault = true;
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
                      'Add Address Book',
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
                    TextFormField(
                      controller: pincodeController,
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        context.read<PincodeBloc>().add(
                              PincodeEvent.checkPincode(
                                pincode: val,
                              ),
                            );
                        if (val.length == 6) {
                          FocusScope.of(context).unfocus();
                        }
                      },
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(6),
                      ],
                      decoration: InputDecoration(
                        suffix: const PinCodeStatus(),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Pin Code',
                        hintStyle: textTheme.titleMedium?.copyWith(
                          fontSize: 11,
                          color: AppColors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const PinCodeErrorMessage(),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomCheckBox(
                          onChanged: (e) {
                            setState(() {
                              isDefault = e!;
                            });
                          },
                          value: isDefault,
                        ),
                        Text(
                          'Prefered / Default',
                          style: textTheme.titleMedium?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
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
                child: BlocConsumer<AddressBookBloc, AddressBookState>(
                  buildWhen: (previous, current) =>
                      previous.isSubmitting != current.isSubmitting,
                  listenWhen: (previous, current) =>
                      previous.isSubmitting != current.isSubmitting &&
                      !current.isSubmitting,
                  listener: (context, state) {
                    state.apiFailureOrSuccessOption.fold(() {}, (a) {
                      a.fold(
                        (l) {
                          CustomSnackbar.showErrorMessage(
                            context,
                            l.failureMessage,
                          );
                        },
                        (r) {
                          context.router.maybePop();
                          CustomSnackbar.showSuccessMessage(
                            context,
                            StringConstant.addressBookAddedSuccessfully,
                          );
                        },
                      );
                    });
                  },
                  builder: (context, addressBookState) {
                    return BlocBuilder<PincodeBloc, PincodeState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: addressBookState.isSubmitting ||
                                  !state.pinCodeVerified
                              ? null
                              : () {
                                  if (formKey.currentState!.validate()) {
                                    context.read<AddressBookBloc>().add(
                                          AddressBookEvent.addAddressBook(
                                            addressBook:
                                                AddressBook.empty().copyWith(
                                              address: addressController.text,
                                              fullName: nameController.text,
                                              phoneNumber:
                                                  mobileController.text,
                                              pincode: pincodeController.text,
                                            ),
                                            isMakeDefault: isDefault,
                                          ),
                                        );
                                    FocusScope.of(context).unfocus();
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: AppColors.black,
                            maximumSize: const Size(330, 50),
                          ),
                          child: const Text('Add Delivery Address'),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.clear();
    pincodeController.clear();
    addressController.clear();
    mobileController.clear();
    super.dispose();
  }
}
