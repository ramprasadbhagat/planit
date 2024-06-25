import 'package:flutter/material.dart';
import 'package:planit/presentation/order/widgets/rating.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class ReviewDialogBox extends StatelessWidget {
  const ReviewDialogBox({super.key});

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
                Image.asset(
                  PngImage.orderItem1,
                  height: 80,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Johnson Almonds',
                        style: textTheme.labelSmall?.copyWith(
                          fontSize: 18,
                          color: AppColors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Johnson Fresh almonds 1 kg pack',
                          style: textTheme.bodySmall?.copyWith(
                            fontSize: 16,
                            color: AppColors.grey2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Johnson Fresh almonds 1 kg pack',
                          style: textTheme.bodySmall?.copyWith(
                            fontSize: 16,
                            color: AppColors.grey2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'What is your rate ?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
