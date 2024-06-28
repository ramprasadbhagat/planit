import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/presentation/address_book/widget/custom_checkbox.dart';
import 'package:planit/presentation/address_book/widget/edit_address_book.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class AddressBooks extends StatefulWidget {
  const AddressBooks({super.key});

  @override
  State<AddressBooks> createState() => _AddressBooksState();
}

class _AddressBooksState extends State<AddressBooks> {
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

    return Expanded(
      child: BlocConsumer<AddressBookBloc, AddressBookState>(
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
          return Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(
              15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(color: Color.fromRGBO(0, 0, b, opacity)),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 188, 186, 186),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 0.8,
                ),
              ],
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.addressList.length,
              physics: const ClampingScrollPhysics(),
              // shrinkWrap: true,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return GestureDetector(
                  onTap: () {
                    context.read<AddressBookBloc>().add(
                          AddressBookEvent.selectAddress(
                            addressBook: state.addressList.elementAt(
                              index,
                            ),
                          ),
                        );
                  },
                  child: Container(
                    width: double.infinity,
                    // margin: const EdgeInsets.only(
                    //   top: 10,
                    // ),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: state.addressList[index] == state.selectedAddress
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomCheckBox(
                              onChanged: (e) {
                                if (e == true) {
                                  context.read<AddressBookBloc>().add(
                                        AddressBookEvent.makeDefaultAddress(
                                          id: state.addressList
                                              .elementAt(
                                                index,
                                              )
                                              .id,
                                        ),
                                      );
                                }
                              },
                              value: state.addressList
                                  .elementAt(
                                    index,
                                  )
                                  .isDefault,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Delivery Address ${index + 1}',
                              style: textTheme.titleMedium?.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 6,
                          ),
                          child: Text(
                            '${state.addressList.elementAt(
                                  index,
                                ).address} - ${state.addressList[index].pincode}',
                            style: textTheme.titleMedium?.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grey3,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (
                                        BuildContext context,
                                      ) =>
                                          CommonBottomSheet(
                                        child: EditAddressBookSheet(
                                          addressBook:
                                              state.addressList.elementAt(
                                            index,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    SvgImage.edit,
                                    height: 18,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                InkWell(
                                  onTap: () {
                                    showDeleteDialog(
                                      state.addressList[index],
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    SvgImage.delete,
                                    height: 18,
                                    fit: BoxFit.fitHeight,
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
          );
        },
      ),
    );
  }
}
