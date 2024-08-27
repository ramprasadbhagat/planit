import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class PaymentMethodTile<T> extends StatelessWidget {
  final T value;
  final T selectedValue;
  final String label;
  final Widget? trailing;
  final Widget? subTitle;
  final void Function(T?)? onChanged;
  const PaymentMethodTile({
    super.key,
    required this.value,
    required this.selectedValue,
    this.onChanged,
    required this.label,
    this.trailing,
    this.subTitle,
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
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.grey2;
            }
            return AppColors.black;
          }),
        ),
      ),
      child: RadioListTile<T>(
        secondary: trailing,
        visualDensity: const VisualDensity(
          vertical: -4,
        ),
        value: value,
        groupValue: selectedValue,
        onChanged: onChanged,
        subtitle: subTitle,
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 13,
                color: onChanged == null ? AppColors.grey2 : null,
              ),
        ),
      ),
    );
  }
}
