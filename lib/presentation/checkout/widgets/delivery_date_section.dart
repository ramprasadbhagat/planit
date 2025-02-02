import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class DeliveryDateSection extends StatefulWidget {
  const DeliveryDateSection({
    super.key,
    required this.onChanged,
    required this.initialDate,
  });
  final Function(DateTime?) onChanged;
  final DateTime initialDate;

  @override
  State<DeliveryDateSection> createState() => _DeliveryDateSectionState();
}

class _DeliveryDateSectionState extends State<DeliveryDateSection> {
  late DateTime selectedDate;

  @override
  void initState() {
    selectedDate = widget.initialDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: AppColors.extraLightGrey2,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                SvgImage.calendar,
                height: 14,
                width: 14,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                DateFormat('dd / MM / yyyy').format(selectedDate),
                style: textTheme.labelSmall?.copyWith(
                  color: AppColors.grey2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 70,
            height: 24,
            child: ElevatedButton(
              onPressed: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 30)),
                );

                if (pickedDate != null) {
                  setState(() {
                    selectedDate = pickedDate;
                    widget.onChanged(pickedDate);
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  side: BorderSide(width: 1, color: Colors.black),
                ),
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Select',
                style: textTheme.labelSmall?.copyWith(
                  color: AppColors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
