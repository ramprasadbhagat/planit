import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class UserProfilePic extends StatelessWidget {
  const UserProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: AppColors.extraLightGrey2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Image.asset(
            PngImage.generic('profile_pic.png'),
            height: 60,
            fit: BoxFit.fitHeight,
          ),
        );
  }
}