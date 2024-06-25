import 'package:flutter/material.dart';
import 'package:planit/presentation/order/widgets/rating.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class ReviewOrderDialogBox extends StatelessWidget {
  const ReviewOrderDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  size: 18,
                  color: AppColors.grey2,
                ),
                Text(
                  ' Order ID : ORD10786420 ',
                  style: textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.timer_outlined,
                  size: 18,
                  color: AppColors.grey2,
                ),
                Text(
                  ' Delivered on : 2nd June 2024 , 4:30 pm',
                  style: textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  PngImage.dollar,
                  height: 12,
                  width: 15,
                ),
                Text(
                  ' Price : ₹ 699.00   |   2 Items ',
                  style: textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 2,
              color: AppColors.lightGray,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Rate your overall experience ?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const StarRating(),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(color: Color.fromRGBO(0, 0, b, opacity)),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 188, 186, 186),
                    offset: Offset(0.0, 1.0),
                    blurRadius: 0.8,
                  ),
                ],
              ),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                maxLines: 2,
                //or null
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  fillColor: Colors.white,
                  // contentPadding:
                  //     EdgeInsets.symmetric(vertical: 30.00, horizontal: 40),
                  hintText: 'Type Something',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
                minimumSize: const Size(330, 50),
              ),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
