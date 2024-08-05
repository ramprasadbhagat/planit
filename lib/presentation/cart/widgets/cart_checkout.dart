import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            offset: Offset(0, -4),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.maxFinite,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  if (context.read<AuthBloc>().state ==
                      const AuthState.unauthenticated()) {
                    context.router.navigate(const LoginRoute());
                  } else {
                    context.router.navigate(const CheckoutRoute());
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: AppColors.black,
                  maximumSize: Size.fromWidth(
                    MediaQuery.sizeOf(context).width * 0.9,
                  ),
                ),
                child: Text(
                  'Proceed to checkout',
                  style: textTheme.bodyMedium?.copyWith(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
