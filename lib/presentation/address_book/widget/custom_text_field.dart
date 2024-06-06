import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  const CustomTextField({
    super.key,
    this.validator,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: textTheme.titleMedium?.copyWith(
          fontSize: 11,
          color: AppColors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.grey1,
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
