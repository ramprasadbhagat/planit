import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/otp/otp_bloc.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:planit/presentation/core/loading_shimmer/loading_shimmer.dart';

@RoutePage()
class LoginOtp extends StatefulWidget {
  const LoginOtp({super.key});

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
  final TextEditingController _otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _triggerValidator = false;

  @override
  void dispose() {
    Future.delayed(Duration.zero, () {
      if (mounted) {
        _otpController.dispose();
      }
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final authBloc = context.read<AuthBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Otp Verification',
          style: textTheme.labelMedium,
        ),
        leadingWidth: 25,
        automaticallyImplyLeading: false,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.darkGray,
          ),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: BlocListener<OtpBloc, OtpState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                final snackBar = SnackBar(
                  backgroundColor: Colors.black,
                  content: Text(failure.failureMessage),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              (_) {
                if (state.auth != Auth.empty()) {
                  authBloc.add(const AuthEvent.authCheck());
                }
              },
            ),
          );
        },
        listenWhen: (previous, current) =>
            previous.authFailureOrSuccessOption !=
            current.authFailureOrSuccessOption,
        child: Form(
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
              Text(
                '+91 ${context.read<OtpBloc>().state.mobileNumber.getValue()}',
              ),
              const SizedBox(
                height: 15,
              ),
              PinCodeTextField(
                controller: _otpController,
                appContext: context,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                ],
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
                validator: (value) {
                  if (_triggerValidator) {
                    return OTP(value ?? '').value.fold(
                          (failure) => failure.mapOrNull(
                            empty: (_) => 'Please enter otp',
                            subceedLength: (_) => 'Please enter valid otp',
                          ),
                          (_) => null,
                        );
                  }
                  return null;
                },
                onCompleted: (value) {
                  context.read<OtpBloc>().add(OtpEvent.updateOtp(value));
                  setState(() {
                    _triggerValidator = false;
                  });
                },
                errorTextSpace: 20,
                errorTextMargin: const EdgeInsets.symmetric(horizontal: 120.0),
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<OtpBloc, OtpState>(
                buildWhen: (pre, cur) =>
                    pre.resentOtpLoading != cur.resentOtpLoading,
                builder: (context, state) {
                  return LoadingShimmer.withChild(
                    enabled: state.resentOtpLoading,
                    child: TextButton(
                      onPressed: state.resentOtpLoading
                          ? null
                          : () {
                              _otpController.clear();
                              context
                                  .read<OtpBloc>()
                                  .add(const OtpEvent.resendOtp());
                            },
                      child: Text(
                        'Resend OTP',
                        style: textTheme.bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                },
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: BlocBuilder<OtpBloc, OtpState>(
                  buildWhen: (previous, current) =>
                      previous.isSubmitting != current.isSubmitting,
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _triggerValidator = true;
                        });
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            _triggerValidator = false;
                          });
                          context
                              .read<OtpBloc>()
                              .add(const OtpEvent.submitOtp());
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
                          ? LoadingShimmer.circular()
                          : const Text('Submit'),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
