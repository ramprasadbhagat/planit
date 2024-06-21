import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class OrderActionButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  const OrderActionButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88,
      height: 25,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        color: AppColors.black,
        onPressed: onTap,
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 10,
                color: AppColors.white,
              ),
        ),
      ),
    );
  }
}
