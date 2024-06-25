import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class PaymentMethodTile<T> extends StatelessWidget {
  final T value;
  final T selectedValue;
  final String label;
  final void Function(T?)? onChanged;
  const PaymentMethodTile({
    super.key,
    required this.value,
    required this.selectedValue,
    this.onChanged,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        listTileTheme: const ListTileThemeData(
          minLeadingWidth: 0,
          contentPadding: EdgeInsets.zero,
          horizontalTitleGap: 5,
        ),
        radioTheme: const RadioThemeData(
          fillColor: MaterialStatePropertyAll(AppColors.black),
        ),
      ),
      child: RadioListTile<T>(
        visualDensity: const VisualDensity(
          vertical: -4,
        ),
        value: value,
        groupValue: selectedValue,
        onChanged: onChanged,
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 13,
              ),
        ),
      ),
    );
  }
}
