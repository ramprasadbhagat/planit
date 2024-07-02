import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class NoPincodeErrorDialog extends StatelessWidget {
  const NoPincodeErrorDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Dialog(
      child: SizedBox(
        width: 250,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.translate(
                offset: const Offset(0, -30),
                child: Container(
                  height: 55,
                  width: 55,
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey2,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    PngImage.location,
                    height: 35,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Text(
                'Enter your delivery pincode to add this item to your cart and check availability.',
                style: textTheme.labelSmall?.copyWith(
                  color: const Color(0xff424446),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 80,
                height: 28,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.maybePop();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: AppColors.black,
                    maximumSize: const Size(330, 50),
                  ),
                  child: Text(
                    'OK',
                    style: textTheme.labelSmall?.copyWith(
                      color: AppColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
