import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class UserProfilePic extends StatelessWidget {
  final String url;
  const UserProfilePic({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
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
      child: CachedNetworkImage(
        imageUrl: url,
        errorWidget: (context, url, error) {
          return const Icon(
            Icons.person_outline,
            size: 40,
            color: AppColors.grey1,
          );
        },
        height: 60,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
