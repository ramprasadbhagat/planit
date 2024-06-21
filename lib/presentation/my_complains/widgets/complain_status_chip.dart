import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class ComplainStatusChip extends StatelessWidget {
  final bool isSuccess;
  const ComplainStatusChip({super.key, required this.isSuccess});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSuccess ? AppColors.successStatusGreen : AppColors.red,
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          isSuccess ? 'Resolved' : 'Rejected',
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 10,
                color: AppColors.white,
              ),
        ),
      ),
    );
  }
}
