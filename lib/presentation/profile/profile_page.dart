import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/profile/widgets/custom_tile.dart';
import 'package:planit/presentation/profile/widgets/edit_profile_bottom_sheet.dart';
import 'package:planit/presentation/profile/widgets/user_details_section.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 20,
        centerTitle: false,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            context.router.maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: AppColors.grey2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const UserDetailsSection(),
                    InkWell(
                      onTap: () => showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) =>
                            const CommonBottomSheet(
                          child: EditProfileBottomSheet(),
                        ),
                      ),
                      child: const Icon(
                        Icons.edit_note,
                        color: AppColors.grey2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 0.8,
                  width: double.infinity,
                  color: AppColors.extraLightGrey3,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTile(
                  onTap: () =>
                      context.router.navigate(const AddressBookRoute()),
                  leadingIcon: Icons.fact_check_outlined,
                  title: 'Address Book',
                ),
                CustomTile(
                  onTap: () => context.router.navigate(const OrderListRoute()),
                  leadingIcon: Icons.subtitles_outlined,
                  title: 'My orders',
                ),
                CustomTile(
                  onTap: () =>
                      context.router.navigate(const OrderDetailsRoute()),
                  leadingIcon: Icons.subtitles_outlined,
                  title: 'Order Details',
                ),
                CustomTile(
                  onTap: () => context.router.navigate(const MyWalletRoute()),
                  leadingIcon: Icons.wallet,
                  title: 'My wallet',
                ),
                CustomTile(
                  onTap: () =>
                      context.router.navigate(const MyComplainsRoute()),
                  leadingIcon: Icons.receipt,
                  title: 'My complaints',
                ),
                CustomTile(
                  onTap: () {},
                  leadingIcon: Icons.star_border_outlined,
                  title: 'My favourite recipes',
                ),
                CustomTile(
                  onTap: () {},
                  leadingIcon: Icons.privacy_tip_outlined,
                  title: 'Terms and conditions',
                ),
                CustomTile(
                  onTap: () {},
                  leadingIcon: Icons.policy_outlined,
                  title: 'Privacy policy',
                ),
                CustomTile(
                  onTap: () {},
                  leadingIcon: Icons.admin_panel_settings_outlined,
                  title: 'About',
                ),
                CustomTile(
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.logout());
                    context
                        .read<CartBloc>()
                        .add(const CartEvent.clearAllCartLocal());
                    context
                        .read<PincodeBloc>()
                        .add(const PincodeEvent.initialized());
                    context
                        .read<WishlistBloc>()
                        .add(const WishlistEvent.initialized());
                    context.router.maybePop();
                    // context.router.navigate(const LoginRoute());
                  },
                  leadingIcon: Icons.exit_to_app,
                  title: 'Logout',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
