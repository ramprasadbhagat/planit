import 'package:flutter/material.dart';
import 'package:planit/presentation/profile/widgets/user_profile_pic.dart';
import 'package:planit/presentation/theme/colors.dart';

class UserDetailsSection extends StatelessWidget {
  const UserDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const UserProfilePic(),
        const SizedBox(
          width: 6,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Thomas Jones',
              style: textTheme.labelSmall,
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.smartphone,
                  size: 15,
                  color: AppColors.extraLightGrey2,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  '+91 8354988807',
                  style: textTheme.bodyMedium?.copyWith(color: AppColors.grey2),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'jonesthomas@gmail.com',
              style: textTheme.bodyMedium?.copyWith(color: AppColors.grey2),
            ),
          ],
        ),
      ],
    );
  }
}
