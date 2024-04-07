import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class CartBanner extends StatelessWidget {
  const CartBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 30, bottom: 10, right: 16, left: 16),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 50,
            decoration: const BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              children: [
                Text(
                  '4 items | \$ 432',
                  style: textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: const BoxDecoration(
                    color: AppColors.grey2,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Text(
                    '\$ 16 saved',
                    style: textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ),
                const Spacer(),
                Text(
                  'View Cart',
                  style: textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(22, -22),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Transform.translate(
                offset: const Offset(0, 0),
                child: Row(
                  children: [
                    Image.asset(PngImage.cartBannerLogo),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              RichText(
                text: TextSpan(
                  text: 'Add Items Worth Rs. 120 and Unlock ',
                  style: textTheme.bodySmall?.copyWith(fontSize: 10),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Free Delivery',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
