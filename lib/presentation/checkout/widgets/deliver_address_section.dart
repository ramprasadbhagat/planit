import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/presentation/address_book/widget/new_address_bottom_sheet.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';

class DeliveryAddressSection extends StatelessWidget {
  const DeliveryAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, top: 8, bottom: 8),
        child: BlocBuilder<AddressBookBloc, AddressBookState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    state.selectedAddress.isEmpty
                        ? Expanded(
                            child: Text(
                              StringConstant.noAddressAddedWithDeliveryPin(
                                context.read<PincodeBloc>().state.pincode,
                              ),
                            ),
                          )
                        : Expanded(
                            child: Text(
                              '${state.selectedAddress.fullName}\n${state.selectedAddress.address} ${state.selectedAddress.pincode}',
                              style: textTheme.bodySmall?.copyWith(
                                fontSize: 13,
                                color: AppColors.grey1,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                    SizedBox(
                      height: 25,
                      width: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          if (state.selectedAddress.isEmpty) {
                            showModalBottomSheet<void>(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) =>
                                  const CommonBottomSheet(
                                child: NewAddressBookSheet(),
                              ),
                            );
                          } else {
                            context.router.navigate(const AddressBookRoute());
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            side: BorderSide(width: 1, color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          state.selectedAddress.isEmpty ? 'Add' : 'Change',
                          style: const TextStyle(
                            color: AppColors.black,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Checkbox(
                //       fillColor: const MaterialStatePropertyAll(Colors.black),
                //       value: true,
                //       onChanged: (e) {},
                //     ),
                //     const SizedBox(
                //       width: 6,
                //     ),
                //     Text(
                //       'Same as shipping address',
                //       style: textTheme.bodySmall?.copyWith(
                //         fontSize: 13,
                //         color: AppColors.grey1,
                //         fontWeight: FontWeight.w400,
                //       ),
                //       textAlign: TextAlign.start,
                //     ),
                //   ],
                // ),
              ],
            );
          },
        ),
      ),
    );
  }
}
