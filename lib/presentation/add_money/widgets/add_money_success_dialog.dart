import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class AddMoneySuccessDialog extends StatelessWidget {
  const AddMoneySuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 30,
      ),
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: double.maxFinite,
              child: Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Transform.translate(
                  offset: const Offset(0, -45),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 32),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.black,
                            border: Border.all(
                              color: AppColors.successBorderGreen,
                              width: 16,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: AppColors.white,
                            size: 60,
                          ),
                        ),
                        Text(
                          'GREAT!',
                          style: textTheme.labelSmall?.copyWith(
                            color: AppColors.grey1,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Amount has been successfully added to your wallet balance.',
                          style: textTheme.labelMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 16,
            child: SizedBox(
              width: 40,
              height: 40,
              child: Material(
                clipBehavior: Clip.hardEdge,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                elevation: 3,
                color: AppColors.white,
                child: IconButton(
                  iconSize: 25,
                  color: AppColors.black,
                  onPressed: () {
                    context.maybePop();
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
