import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/core/pin_code_dialog_box/pin_code_dialog_box.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';
import 'package:planit/utils/svg_image.dart';

class DeliveringTo extends StatelessWidget {
  const DeliveringTo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: BlocListener<PincodeBloc, PincodeState>(
            listenWhen: (previous, current) =>
                previous.isSaving != current.isSaving && !current.isSaving,
            listener: (context, state) {
              state.apiFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (l) {
                    CustomSnackbar.showErrorMessage(context, l.failureMessage);
                    context.router.maybePop();
                  },
                  (_) {},
                ),
              );
              context.read<AddressBookBloc>().add(
                    AddressBookEvent.updateCurrentPinCode(
                      pinCode: state.pincode,
                    ),
                  );
              CustomSnackbar.showSuccessMessage(
                context,
                StringConstant.pinCodeSavedSuccessfully,
              );
              context.router.maybePop();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      SvgImage.locationPin,
                    ),
                    const SizedBox(width: 4.0),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) =>
                              const CommonBottomSheet(
                            child: PinCodeDialogBox(),
                          ),
                        );
                      },
                      child: BlocBuilder<PincodeBloc, PincodeState>(
                        buildWhen: (previous, current) =>
                            previous.pincode != current.pincode,
                        builder: (context, state) {
                          return Text(
                            'Delivering to  ${state.pincode}',
                            style: textTheme.bodyMedium,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  'Order within 30 mins for delivery by 6 pm on 24-03',
                  style: textTheme.labelSmall?.copyWith(fontSize: 13),
                ),
                const SizedBox(width: 4.0),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              if (context.read<AuthBloc>().state ==
                  const AuthState.unauthenticated()) {
                context.router.navigate(const LoginRoute());
              } else {
                context.router.navigate(const ProfileRoute());
              }
            },
            child: BlocBuilder<UserProfileBloc, UserProfileState>(
              buildWhen: (previous, current) => previous.user != current.user,
              builder: (context, state) {
                if (state.user.profileImage.isValid()) {
                  return Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightGray2,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: state.user.profileImage.getValue(),
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.lightGray2,
                        ),
                        child: const Icon(Icons.person),
                      ),
                    ),
                  );
                }

                return Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightGray2,
                  ),
                  child: const Icon(Icons.person),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
