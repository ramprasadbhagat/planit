import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/address_book/entities/address_book_group.dart';
import 'package:planit/presentation/address_book/widget/confirm_address_delete_alert.dart';
import 'package:planit/presentation/address_book/widget/custom_checkbox.dart';
import 'package:planit/presentation/address_book/widget/edit_address_book.dart';
import 'package:planit/presentation/address_book/widget/new_address_bottom_sheet.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/core/loading_shimmer/loading_shimmer.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scroll_list.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddressBooks extends StatefulWidget {
  const AddressBooks({super.key});

  @override
  State<AddressBooks> createState() => _AddressBooksState();
}

class _AddressBooksState extends State<AddressBooks> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddressBookBloc, AddressBookState>(
      listener: (context, state) {
        CustomSnackbar.showSuccessMessage(
          context,
          StringConstant.addressBookDeletedSuccessfully,
        );
      },
      listenWhen: (previous, current) =>
          current.addressList.length < previous.addressList.length,
      builder: (context, state) {
        return Card(
          elevation: 2,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Skeletonizer(
              enabled: state.isFetching,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Address Book',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Checkbox(
                        fillColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return AppColors.green;
                          }
                          return AppColors.lightGray2;
                        }),
                        value: state.addressList.isNotEmpty,
                        onChanged: null,
                      ),
                      const Spacer(),
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
                    height: 5,
                  ),
                  BlocBuilder<AddressBookBloc, AddressBookState>(
                    buildWhen: (previous, current) =>
                        previous.isFetching != current.isFetching ||
                        previous.isSubmitting != current.isSubmitting,
                    builder: (context, state) {
                      final pinCode = context.read<PincodeBloc>().state.pincode;

                      if (state.isPinCodeAddedToAddressBook ||
                          state.currentSelectedPinCode.isEmpty) {
                        return const SizedBox.shrink();
                      } else {
                        return LoadingShimmer.withChild(
                          enabled: state.isFetching || state.isSubmitting,
                          child: Material(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: AppColors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 8,
                              ),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      StringConstant
                                          .noAddressAddedWithDeliveryPin(
                                        pinCode,
                                      ),
                                      style: const TextStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  Expanded(
                    child: ScrollList<AddressBookGroup>(
                      noRecordFoundWidget: const Padding(
                        padding: EdgeInsets.only(
                          top: 25,
                        ),
                        child: NoData(
                          message: 'No Address added yet',
                        ),
                      ),
                      controller: ScrollController(),
                      onRefresh: () => context
                          .read<AddressBookBloc>()
                          .add(const AddressBookEvent.fetch()),
                      onLoadingMore: () => {},
                      isLoading: state.isFetching,
                      itemBuilder: (context, index, item) => _AddressBookGroup(
                        addressGroup: item,
                        selectedAddress: state.selectedAddress,
                        index: index,
                      ),
                      items: state.addressList.getAddressBookGroupList,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _AddressBookGroup extends StatelessWidget {
  final AddressBookGroup addressGroup;
  final AddressBook selectedAddress;

  final int index;

  const _AddressBookGroup({
    required this.addressGroup,
    required this.selectedAddress,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pin code - ${addressGroup.pinCode}',
            style: const TextStyle(
              color: AppColors.darkTeal,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ...addressGroup.addressBookList.map(
            (e) => Column(
              children: [
                AddressItem(
                  addressBook: e,
                  isSelected: selectedAddress == e,
                  index: addressGroup.addressBookList.indexOf(e),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddressItem extends StatelessWidget {
  final AddressBook addressBook;
  final bool isSelected;
  final int index;
  const AddressItem({
    super.key,
    required this.addressBook,
    required this.isSelected,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Future<void> showDeleteDialog(AddressBook addressBook) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return ConfirmAddressDeleteAlert(
            addressId: addressBook.id,
          );
        },
      );
    }

    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        context.read<AddressBookBloc>().add(
              AddressBookEvent.selectAddress(
                addressBook: addressBook,
              ),
            );
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 10,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isSelected
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
                              id: addressBook.id,
                            ),
                          );
                    }
                  },
                  value: addressBook.isDefault,
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
                '${addressBook.address} - ${addressBook.pincode}',
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
                              addressBook: addressBook,
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
                          addressBook,
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
  }
}
