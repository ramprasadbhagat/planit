import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String) onChange;
  const SearchTextField({super.key, required this.textEditingController, required this.onChange});

  @override
  Widget build(BuildContext context) {
    const borderDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide.none,
    );
    return Material(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        onChanged: onChange,
        controller: textEditingController,
        decoration: const InputDecoration(
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
    );
  }
}
