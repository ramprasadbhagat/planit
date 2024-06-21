import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/utils/svg_image.dart';

class AddComplainsForm extends StatelessWidget {
  const AddComplainsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Order ID',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                  readOnly: true,
                  initialValue: '19-03-2024',
                  decoration: InputDecoration(
                    hintText: 'Select date',
                    suffix: SvgPicture.asset(
                      SvgImage.calendar2,
                      width: 14,
                      height: 14,
                    ),
                  ),
                ),
              ),
              DropdownButtonFormField(
                items: const [],
                onChanged: (v) {},
                icon: const Icon(Icons.keyboard_arrow_down),
                decoration: const InputDecoration(
                  labelText: 'Complain type',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Type description here',
                ),
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
