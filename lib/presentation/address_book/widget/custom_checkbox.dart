import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final void Function(bool?) onChanged;
  final bool value;
  const CustomCheckBox({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      side: MaterialStateBorderSide.resolveWith(
        (states) => const BorderSide(
          width: 1.0,
          color: Colors.black,
        ),
      ),
      fillColor: MaterialStateProperty.all(Colors.white),
      checkColor: Colors.black,
      activeColor: Colors.black,
      autofocus: true,
      onChanged: onChanged,
      value: value,
    );
  }
}
