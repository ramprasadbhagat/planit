import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    const borderDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide.none,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const TextField(
          decoration: InputDecoration(
            focusedBorder: borderDecoration,
            enabledBorder: borderDecoration,
            errorBorder: borderDecoration,
            disabledBorder: borderDecoration,
            border: borderDecoration,
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search_rounded,
              size: 24,
              color: Colors.grey,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
          ),
        ),
      ),
    );
  }
}
