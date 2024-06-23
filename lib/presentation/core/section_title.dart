import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final Function() onTap;
  const SectionTitle({super.key, required this.title, required this.onTap});

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
