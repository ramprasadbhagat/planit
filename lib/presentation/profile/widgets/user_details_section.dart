import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/presentation/profile/widgets/user_profile_pic.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserDetailsSection extends StatelessWidget {
  const UserDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      buildWhen: (previous, current) => previous.user != current.user,
      builder: (context, state) {
        return Skeletonizer(
          enabled: state.isFetching,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserProfilePic(
                url: state.user.profileImage.getValue(),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.user.fullName.getOrDefaultValue('Your name'),
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
                        '+91 ${state.user.mobileNumber.getValue()}',
                        style: textTheme.bodyMedium
                            ?.copyWith(color: AppColors.grey2),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    state.user.emailAddress
                        .getOrDefaultValue('Your email address'),
                    style:
                        textTheme.bodyMedium?.copyWith(color: AppColors.grey2),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
