import 'package:flutter/material.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/domain/home/entities/before_checkout.dart';

class BeforeCheckOutCard extends StatelessWidget {
  final BeforeCheckout item;

  const BeforeCheckOutCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 150,
      height: 170,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    PngImage.generic(item.image),
                    height: 80,
                  ),
                  item.editable
                      ? const AddToListTextField()
                      : const AddToListButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.title,
                    style: textTheme.bodySmall?.copyWith(fontSize: 10),
                  ),
                  Text(
                    '1g',
                    style: textTheme.bodySmall?.copyWith(
                      color: AppColors.grey1,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '\$430 ',
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 9,
                    ),
                  ),
                  Text(
                    ' 470',
                    style: textTheme.bodySmall!.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: AppColors.lightGray,
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 9,
                      ),
                      Text(
                        '4.3',
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 75,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        side: const BorderSide(color: Colors.black),
                        foregroundColor: AppColors.grey3,
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Add to cart',
                        style: textTheme.bodySmall?.copyWith(fontSize: 9),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddToListButton extends StatelessWidget {
  const AddToListButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 25,
      width: 80,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: const BorderSide(color: Colors.black),
          foregroundColor: AppColors.grey3,
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 3,
          ),
          textStyle: textTheme.bodySmall
              ?.copyWith(fontSize: 9, color: AppColors.lightGrey),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.favorite_outline,
              size: 12,
              color: AppColors.grey3,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Add to list',
            ),
          ],
        ),
      ),
    );
  }
}

class AddToListTextField extends StatefulWidget {
  const AddToListTextField({super.key});

  @override
  State<AddToListTextField> createState() => _AddToListTextFieldState();
}

class _AddToListTextFieldState extends State<AddToListTextField> {
  int countValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 80,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.favorite_rounded,
            size: 12,
            color: Color.fromRGBO(167, 22, 0, 1),
          ),
          GestureDetector(
            onTap: () => setState(() => countValue += 1),
            child: const Icon(
              Icons.add,
              size: 12,
              color: AppColors.black,
            ),
          ),
          Text(countValue.toString()),
          GestureDetector(
            onTap: () => setState(() {
              if (countValue > 1) {
                countValue -= 1;
              }
            }),
            child: const Icon(
              Icons.remove,
              size: 12,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
