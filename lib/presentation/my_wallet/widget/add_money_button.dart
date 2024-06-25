import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';

class AddMoneyButton extends StatelessWidget {
  const AddMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      onPressed: () {
        context.router.navigate(const AddMoneyRoute());
      },
      icon: const Icon(
        Icons.add_circle_outline,
        size: 20,
      ),
      label: Text(
        'Add money',
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppColors.white,
            ),
      ),
    );
  }
}
