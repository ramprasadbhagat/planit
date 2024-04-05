import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Search',
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 24,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
          ),
        ),
      ),
    );
  }
}
