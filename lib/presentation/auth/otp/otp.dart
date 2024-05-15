import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/login/login_form_bloc.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

@RoutePage()
class LoginOtp extends StatelessWidget {
  const LoginOtp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final loginFormBloc = context.read<LoginFormBloc>();
    final authBloc = context.read<AuthBloc>();
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
          return Column(
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
                child: ElevatedButton(
                  onPressed: () {
                    loginFormBloc.add(const LoginFormEvent.verifyOTP());
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
              const SizedBox(
                height: 40,
              ),
            ],
          );
        },
      ),
    );
  }
}
