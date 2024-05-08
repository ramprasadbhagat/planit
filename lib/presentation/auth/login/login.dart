import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(PngImage.loginBackGround),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(4), // Border width
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.appIconBorderColor,
                    width: 3,
                  ),
                ),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(60),
                  child: Image.asset(PngImage.appPngimageLogo),
                ),
              ),
              Card(
                elevation: 2,
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Sign In',
                        style: textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        height: 80,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10),
                          ],
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Text('+91'),
                            ),
                            hintText: 'Enter Mobile Number',
                            hintStyle: textTheme.titleMedium?.copyWith(
                              fontSize: 11,
                              color: AppColors.lightGrey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forget Password?',
                            style: textTheme.bodySmall?.copyWith(fontSize: 11),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: ElevatedButton(
                          onPressed: () =>
                              context.router.navigate(const LoginOtp()),
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: AppColors.black,
                            maximumSize: Size.fromWidth(
                              MediaQuery.sizeOf(context).width * 0.7,
                            ),
                          ),
                          child: const Text('LOGIN'),
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By continuing, you agree to our ',
                          style: textTheme.bodySmall
                              ?.copyWith(fontSize: 7, color: AppColors.grey1),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms of Service',
                              style: textTheme.bodySmall?.copyWith(
                                fontSize: 7,
                                color: AppColors.grey1,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const TextSpan(text: ' & '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: textTheme.bodySmall?.copyWith(
                                fontSize: 7,
                                color: AppColors.grey1,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
