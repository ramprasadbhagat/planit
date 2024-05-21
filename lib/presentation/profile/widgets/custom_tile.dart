import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.onTap,
    required this.leadingIcon,
    required this.title,
  });
  final void Function() onTap;
  final IconData leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      onTap: onTap,
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.extraLightGrey3,
        ),
        child: Icon(
          leadingIcon,
          size: 18,
          color: AppColors.grey2,
        ),
      ),
      title: Text(
        title,
        style: textTheme.labelSmall,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
        color: AppColors.black,
      ),
    );
  }
}
