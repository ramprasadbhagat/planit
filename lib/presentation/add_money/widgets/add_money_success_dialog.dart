import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/animation_path.dart';
import 'package:planit/utils/string_constants.dart';

class AddMoneySuccessDialog extends StatelessWidget {
  const AddMoneySuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 30,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              bottom: 10,
              right: -150,
              left: -150,
              child: Lottie.asset(
                AnimationPath.success,
                height: double.infinity,
                fit: BoxFit.fill,
                repeat: false,
              ),
            ),
            Positioned(
              top: 100,
              bottom: 100,
              left: 50,
              right: 50,
              child: Card(
                color: AppColors.lightGray2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringConstant.paymentSuccessTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        StringConstant.paymentSuccessSubTitle,
                        style: Theme.of(context).textTheme.labelSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          context.router.navigate(const MyWalletRoute()),
                      child: const Text(StringConstant.continueString),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 20,
              bottom: 260,
              left: 50,
              right: 50,
              child: Icon(
                Icons.check_circle,
                size: 100,
                color: AppColors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
