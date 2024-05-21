import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/profile/widgets/custom_tile.dart';
import 'package:planit/presentation/profile/widgets/edit_profile_bottom_sheet.dart';
import 'package:planit/presentation/profile/widgets/user_details_section.dart';
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
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: AppColors.grey2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                        const EditProfileBottomSheet(),
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
              onTap: () {},
              leadingIcon: Icons.fact_check_outlined,
              title: 'Address Book',
            ),
            CustomTile(
              onTap: () {},
              leadingIcon: Icons.subtitles_outlined,
              title: 'My orders',
            ),
            CustomTile(
              onTap: () {},
              leadingIcon: Icons.wallet,
              title: 'My wallet',
            ),
            CustomTile(
              onTap: () {},
              leadingIcon: Icons.star_border_outlined,
              title: 'My reviews & ratings',
            ),
            CustomTile(
              onTap: () {},
              leadingIcon: Icons.receipt,
              title: 'My complaints',
            ),
            CustomTile(
              onTap: () {},
              leadingIcon: Icons.exit_to_app,
              title: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
