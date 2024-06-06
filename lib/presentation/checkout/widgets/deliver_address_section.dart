import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';

class DeliveryAddressSection extends StatelessWidget {
  const DeliveryAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, top: 8, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe\n19, Peary Das Lane.\nKolkata-700 006',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 13,
                    color: AppColors.grey1,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 25,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () =>
                        context.router.navigate(const AddressBookRoute()),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        side: BorderSide(width: 1, color: Colors.black),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Change',
                      style: TextStyle(color: AppColors.black, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  fillColor: const MaterialStatePropertyAll(Colors.black),
                  value: true,
                  onChanged: (e) {},
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Same as shipping address',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 13,
                    color: AppColors.grey1,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
