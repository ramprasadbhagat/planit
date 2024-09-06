import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool hideViewAllButton;
  const SectionTitle({
    super.key,
    required this.title,
    required this.onTap,
    required this.hideViewAllButton,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textTheme.titleMedium,
        ),
        if (!hideViewAllButton)
          GestureDetector(
            onTap: onTap,
            child: Text(
              'View all',
              style: textTheme.bodySmall,
            ),
          ),
      ],
    );
  }
}
