import 'package:flutter/material.dart';

class YearPickerField extends StatefulWidget {
  const YearPickerField({
    super.key,
  });

  @override
  State<YearPickerField> createState() => _YearPickerFieldState();
}

class _YearPickerFieldState extends State<YearPickerField> {
  TextEditingController controller = TextEditingController();
  DateTime selectedYear = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 100,
      height: 40,
      child: TextFormField(
        controller: controller,
        readOnly: true,
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return StatefulBuilder(
                builder: (context, state) {
                  return AlertDialog(
                    title: const Text('Select Year'),
                    content: SizedBox(
                      width: 300,
                      height: 300,
                      child: YearPicker(
                        firstDate: DateTime.now(),
                        lastDate: DateTime(DateTime.now().year + 30, 1),
                        selectedDate: selectedYear,
                        onChanged: (DateTime dateTime) {
                          setState(() {
                            selectedYear = dateTime;
                            controller.text = dateTime.year.toString();
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
        style: const TextStyle(fontSize: 12),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Year',
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff999999),
          ),
          hintStyle: textTheme.titleMedium?.copyWith(
            fontSize: 11,
            color: const Color(0xff999999),
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
              color: Color(0xff999999),
              width: 0.3,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
