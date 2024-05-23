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
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final loginFormBloc = context.read<LoginFormBloc>();
    context.read<AuthBloc>().add(const AuthEvent.init());
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state != const AuthState.unauthenticated() &&
            state != const AuthState.initial()) {
          context.router.navigateNamed('/maintab');
        }
      },
      listenWhen: (previous, current) => previous != current,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(PngImage.loginBackGround),
            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
                            'Sign In',
                            style: textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              validator: (value) {
                                if (value == null || value.trim() == '') {
                                  return "phone number can't be empty";
                                } else if (value.length < 10) {
                                  return 'enter valid phone number';
                                }
                                return null;
                              },
                              onChanged: (e) {
                                loginFormBloc
                                    .add(LoginFormEvent.mobileNumberChanged(e));
                              },
                              // maxLength: 10,
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
                                style:
                                    textTheme.bodySmall?.copyWith(fontSize: 11),
                              ),
                              GestureDetector(
                                onTap: () => context.router
                                    .navigate(const SignupRoute()),
                                child: const Text('Sign up'),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            child: BlocConsumer<LoginFormBloc, LoginFormState>(
                              listener: (context, state) {
                                if (state.otp != OTP('')) {
                                  context.router.navigate(const LoginOtp());
                                }
                              },
                              listenWhen: (previous, current) =>
                                  previous.otp != current.otp,
                              builder: (context, state) {
                                return ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      loginFormBloc.add(
                                        const LoginFormEvent.initiateLogin(),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor: AppColors.black,
                                    maximumSize: Size.fromWidth(
                                      MediaQuery.sizeOf(context).width * 0.7,
                                    ),
                                  ),
                                  child: state.isSubmitting
                                      ? const CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 3,
                                        )
                                      : const Text('LOGIN'),
                                );
                              },
                            ),
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'By continuing, you agree to our ',
                              style: textTheme.bodySmall?.copyWith(
                                fontSize: 7,
                                color: AppColors.grey1,
                              ),
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
            ),
          ],
        ),
      ),
    );
  }
}
