import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class Tag extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color labelColor;
  const Tag({
    super.key,
    required this.label,
    required this.backgroundColor,
    this.labelColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(60)),
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: labelColor,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
