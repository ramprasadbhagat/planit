import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/login/login_form_bloc.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

@RoutePage()
class LoginOtp extends StatefulWidget {
  const LoginOtp({super.key});

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final loginFormBloc = context.read<LoginFormBloc>();
    final authBloc = context.read<AuthBloc>();
    // String currentText = "";

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
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: BlocConsumer<LoginFormBloc, LoginFormState>(
        listener: (context, state) {
          if (state.auth != Auth.empty()) {
            authBloc.add(const AuthEvent.authCheck());
          }
        },
        listenWhen: (previous, current) => previous.auth != current.auth,
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "We've sent a verification code to",
                  style: textTheme.bodyMedium?.copyWith(color: AppColors.grey1),
                ),
                Text('+91${state.mobileNumber.getValue()}'),
                const SizedBox(
                  height: 15,
                ),

                PinCodeTextField(
                  appContext: context,
                  keyboardType: TextInputType.number,
                  length: 4,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: const Color.fromRGBO(0, 0, 0, 0.15),
                    inactiveColor: const Color.fromRGBO(0, 0, 0, 0.15),
                    inactiveFillColor: const Color.fromRGBO(0, 0, 0, 0.15),
                    selectedFillColor: const Color.fromRGBO(0, 0, 0, 0.15),
                    selectedColor: const Color.fromRGBO(0, 0, 0, 0.15),
                    activeColor: const Color.fromRGBO(0, 0, 0, 0.15),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: 20,
                  ),
                  mainAxisAlignment: MainAxisAlignment.center,
                  validator: (v) {
                    if (v!.length < 4) {
                      return 'Please enter valid otp';
                    } else {
                      return null;
                    }
                  },
                  onCompleted: (v) {
                    loginFormBloc.add(LoginFormEvent.otpChanged(v));
                  },
                  // onTap: () {
                  //   print("Pressed");
                  // },
                  onChanged: (value) {
                    // print(value);
                  },
                  errorTextSpace: 20,
                  errorTextMargin:
                      const EdgeInsets.symmetric(horizontal: 120.0),
                ),

                // OtpTextField(
                //   numberOfFields: 4,
                //   borderColor: const Color(0xFF512DA8),
                //   showFieldAsBox: true,
                //   onCodeChanged: (String code) {
                //     print(code);
                //   },

                //   onSubmit: (String verificationCode) {
                //     verificationCode.length != 4 ? print('error') : print('okay');
                //     // loginFormBloc
                //     //     .add(LoginFormEvent.otpChanged(verificationCode));
                //   }, // end onSubmit
                // ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {
                    loginFormBloc.add(const LoginFormEvent.initiateLogin());
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Resend OTP',
                    style: textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  child: BlocListener<LoginFormBloc, LoginFormState>(
                    listener: (context, state) {
                      state.authFailureOrSuccessOption.fold(
                        () {},
                        (either) => either.fold(
                          (failure) {
                            final snackBar = SnackBar(
                              backgroundColor: Colors.black,
                              content: Text(failure.failureMessage),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          (_) {},
                        ),
                      );
                    },
                    listenWhen: (previous, current) =>
                        previous.authFailureOrSuccessOption !=
                        current.authFailureOrSuccessOption,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          loginFormBloc.add(const LoginFormEvent.verifyOTP());
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
                            )
                          : const Text('Submit'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
