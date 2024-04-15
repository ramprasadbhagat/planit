import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:planit/presentation/home/home_page.dart';
import 'package:planit/presentation/main/tab_bar.dart';
import 'package:planit/presentation/theme/colors.dart';

@RoutePage()
class LoginOtp extends StatelessWidget {
  const LoginOtp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Otp Verification',
          style: textTheme.labelMedium,
        ),
        leadingWidth: 20,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.lightGrey,
          ),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "We've sent a verification code to",
            style: textTheme.bodyMedium?.copyWith(color: AppColors.grey1),
          ),
          const Text('+8961340476'),
          const SizedBox(
            height: 15,
          ),
          OtpTextField(
            numberOfFields: 4,
            borderColor: const Color(0xFF512DA8),
            showFieldAsBox: true,
            onCodeChanged: (String code) {},
            onSubmit: (String verificationCode) {}, // end onSubmit
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Resend OTP',
              style:
                  textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: ElevatedButton(
              onPressed: () => context.router.navigateNamed('/maintab'),
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: AppColors.black,
                maximumSize: Size.fromWidth(
                  MediaQuery.sizeOf(context).width * 0.7,
                ),
              ),
              child: const Text('Submit'),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
