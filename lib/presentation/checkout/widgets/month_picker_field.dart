import 'package:flutter/material.dart';

class MonthPickerField extends StatefulWidget {
  const MonthPickerField({
    super.key,
  });

  @override
  State<MonthPickerField> createState() => _MonthPickerFieldState();
}

class _MonthPickerFieldState extends State<MonthPickerField> {
  String? selectedMonth;
  List<String> monthsList = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: 100,
      height: 40,
      padding: const EdgeInsets.only(
        bottom: 10,
        top: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Colors.grey.shade300,
        ),
      ),
      child: DropdownButton(
        hint: Text(
          'Month',
          style: textTheme.titleMedium?.copyWith(
            fontSize: 11,
            color: const Color(0xff999999),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        value: selectedMonth,
        isExpanded: true,
        underline: const SizedBox(),
        icon: const Icon(
          Icons.keyboard_arrow_down,
          size: 16,
          color: Color(0xff999999),
        ),
        items: monthsList.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Text(
              item,
              style: const TextStyle(fontSize: 12),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            selectedMonth = newValue;
          });
        },
      ),
    );
  }
}
