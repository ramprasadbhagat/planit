import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/presentation/address_book/widget/custom_checkbox.dart';
import 'package:planit/presentation/address_book/widget/custom_text_field.dart';
import 'package:planit/presentation/address_book/widget/edit_address_book.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class AddressBookPage extends StatefulWidget {
  const AddressBookPage({super.key});

  @override
  State<AddressBookPage> createState() => _AddressBookPageState();
}

class _AddressBookPageState extends State<AddressBookPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Future<void> showDeleteDialog(AddressBook addressBook) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
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
                        AddressBookEvent.deleteAddressBook(id: addressBook.id),
                      );
                  context.router.maybePop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Address book',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 20,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.lightGrey,
          ),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(PngImage.loginBackGround),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Column(
              children: [
                BlocConsumer<AddressBookBloc, AddressBookState>(
                  listener: (context, state) {
                    const snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Addressbook deleted successfully'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  listenWhen: (previous, current) =>
                      current.addressList.length < previous.addressList.length,
                  builder: (context, state) {
                    return Expanded(
                      child: Card(
                        elevation: 2,
                        margin: const EdgeInsets.all(16.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            //height: MediaQuery.of(context).size.height * 0.7,
                            child: Skeletonizer(
                              enabled: state.isFetching,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Adresss Book',
                                        style: textTheme.titleMedium?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showModalBottomSheet<void>(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext context) =>
                                                const CommonBottomSheet(
                                              child: NewAddressBookSheet(),
                                            ),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.add,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  state.isAdressEmpty
                                      ? const NoData(
                                          message: 'No Address added yet',
                                        )
                                      : Expanded(
                                          child: ListView.builder(
                                            padding: EdgeInsets.zero,
                                            itemCount: state.addressList.length,
                                            physics:
                                                const ClampingScrollPhysics(),
                                            // shrinkWrap: true,
                                            itemBuilder: (
                                              BuildContext context,
                                              int index,
                                            ) {
                                              return GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<AddressBookBloc>()
                                                      .add(
                                                        AddressBookEvent
                                                            .selectAddress(
                                                          addressBook: state
                                                              .addressList
                                                              .elementAt(
                                                            index,
                                                          ),
                                                        ),
                                                      );
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  margin: const EdgeInsets.only(
                                                    top: 10,
                                                  ),
                                                  padding:
                                                      const EdgeInsets.all(15),
                                                  decoration: BoxDecoration(
                                                    color: state.addressList[
                                                                index] ==
                                                            state
                                                                .selectedAddress
                                                        ? const Color(
                                                            0xffF5F5F5,
                                                          )
                                                        : Colors.white,
                                                    border: Border.all(
                                                      width: 1,
                                                      color: const Color(
                                                        0xffECECEC,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomCheckBox(
                                                            onChanged: (e) {
                                                              if (e == true) {
                                                                context
                                                                    .read<
                                                                        AddressBookBloc>()
                                                                    .add(
                                                                      AddressBookEvent
                                                                          .makeDefaultAddress(
                                                                        id: state
                                                                            .addressList
                                                                            .elementAt(
                                                                              index,
                                                                            )
                                                                            .id,
                                                                      ),
                                                                    );
                                                              }
                                                            },
                                                            value: state
                                                                .addressList
                                                                .elementAt(
                                                                  index,
                                                                )
                                                                .isDefault,
                                                          ),
                                                          const SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text(
                                                            'Deliver Address ${index + 1}',
                                                            style: textTheme
                                                                .titleMedium
                                                                ?.copyWith(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 6,
                                                        ),
                                                        child: Text(
                                                          '${state.addressList.elementAt(
                                                                index,
                                                              ).address} - ${state.addressList[index].pincode}',
                                                          style: textTheme
                                                              .titleMedium
                                                              ?.copyWith(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                AppColors.grey3,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const SizedBox(),
                                                          Row(
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  showModalBottomSheet<
                                                                      void>(
                                                                    context:
                                                                        context,
                                                                    isScrollControlled:
                                                                        true,
                                                                    builder: (
                                                                      BuildContext
                                                                          context,
                                                                    ) =>
                                                                        CommonBottomSheet(
                                                                      child:
                                                                          EditAddressBookSheet(
                                                                        addressBook: state
                                                                            .addressList
                                                                            .elementAt(index),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  SvgImage.edit,
                                                                  height: 18,
                                                                  fit: BoxFit
                                                                      .fitHeight,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                width: 6,
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  showDeleteDialog(
                                                                    state.addressList[
                                                                        index],
                                                                  );
                                                                },
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  SvgImage
                                                                      .delete,
                                                                  height: 18,
                                                                  fit: BoxFit
                                                                      .fitHeight,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewAddressBookSheet extends StatefulWidget {
  const NewAddressBookSheet({super.key});

  @override
  State<NewAddressBookSheet> createState() => _NewAddressBookSheetState();
}

class _NewAddressBookSheetState extends State<NewAddressBookSheet> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final pincodeController = TextEditingController();
  final addressController = TextEditingController();
  final mobileController = TextEditingController();
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
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<AddressBookBloc>().add(
                            AddressBookEvent.addAddressBook(
                              addressBook: AddressBook.empty().copyWith(
                                address: addressController.text,
                                fullName: nameController.text,
                                phoneNumber: mobileController.text,
                                pincode: pincodeController.text,
                              ),
                              isMakeDefault: isDefault,
                            ),
                          );
                      FocusScope.of(context).unfocus();
                      context.router.maybePop();
                      const snackBar = SnackBar(
                        content: Text('AddressBook added successfully'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: AppColors.black,
                    maximumSize: const Size(330, 50),
                  ),
                  child: const Text('Add Delivery Address'),
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
