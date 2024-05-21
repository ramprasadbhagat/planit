import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/login/login_form_bloc.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

@RoutePage()
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final txtController = TextEditingController();
  String onchangeval = '';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    String name;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Image.asset(PngImage.loginBackGround),
            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: SingleChildScrollView(
                  child: Column(
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
                                'Sign Up',
                                style: textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                height: 60,
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  validator: (value) {
                                    if (value == null || value.trim() == '') {
                                      return "Name can't be empty";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Name',
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
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                height: 60,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,

                                  validator: (value) {
                                    if (value == null || value.trim() == '') {
                                      return "Email address can't be empty";
                                    } else if (!value.contains('@')) {
                                      return 'Enter a valid email address';
                                    }
                                    return null;
                                  },
                                  onChanged: (e) {},
                                  // maxLength: 10,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Email Address',
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
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                height: 60,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,

                                  validator: (value) {
                                    if (value == null || value.trim() == '') {
                                      return "pin code can't be empty";
                                    }
                                    return null;
                                  },
                                  onChanged: (e) {},
                                  // maxLength: 10,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Pin Code',
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
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                height: 60,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,

                                  validator: (value) {
                                    if (value == null || value.trim() == '') {
                                      return "address can't be empty";
                                    }
                                    return null;
                                  },
                                  onChanged: (e) {},
                                  // maxLength: 10,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Address',
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
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                width: 330,
                                child:
                                    BlocConsumer<LoginFormBloc, LoginFormState>(
                                  listener: (context, state) {
                                    if (state.otp != OTP('')) {
                                      context.router.navigate(const LoginOtp());
                                    }
                                  },
                                  listenWhen: (previous, current) =>
                                      previous.otp != current.otp,
                                  builder: (context, state) {
                                    return ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: const StadiumBorder(),
                                        backgroundColor: AppColors.black,
                                        maximumSize: const Size(330, 50),
                                      ),
                                      child: state.isSubmitting
                                          ? const CircularProgressIndicator(
                                              color: Colors.white,
                                              strokeWidth: 3,
                                            )
                                          : const Text('COMPLETE'),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                width: 330,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    foregroundColor: AppColors.black,
                                    backgroundColor: AppColors.white,
                                    side: const BorderSide(
                                      width: 1,
                                      color: AppColors.black,
                                    ),
                                    maximumSize: const Size(330, 50),
                                  ),
                                  child: const Text('Skip'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
