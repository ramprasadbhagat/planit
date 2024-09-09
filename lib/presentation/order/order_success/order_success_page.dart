import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:auto_route/auto_route.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColors.accentColor,
            child: Stack(
              children: [
                Positioned(
                  top: 100,
                  bottom: 100,
                  right: -150,
                  left: -150,
                  child: Lottie.asset(
                    'assets/anim/order_success.json',
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 300,
                  bottom: 300,
                  left: 50,
                  right: 50,
                  child: Card(
                    color: AppColors.lightGray2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Congratulations !',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'Your order has been placed. Thank you for ordering.',
                            style: Theme.of(context).textTheme.labelSmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => context.router.replace(
                            const OrderListRoute(),
                          ),
                          child: const Text('Continue'),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 20,
                  bottom: 290,
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
        ),
      ),
    );
  }
}
