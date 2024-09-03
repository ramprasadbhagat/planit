import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/login/login_form_bloc.dart';
import 'package:planit/application/auth/otp/otp_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
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
  final _controller = TextEditingController();
  bool _triggerValidator = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSubmit(BuildContext context) {
    setState(() {
      _triggerValidator = true;
    });
    if (_formKey.currentState!.validate()) {
      setState(() {
        _triggerValidator = false;
      });
      FocusScope.of(context).unfocus();
      context.read<LoginFormBloc>().add(
            const LoginFormEvent.sendOtp(),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state != const AuthState.unauthenticated()) {
          final cartBloc = context.read<CartBloc>();

          if (cartBloc.state.cartData.isNotEmpty) {
            cartBloc.add(const CartEvent.sendLocalServerCart());
          }

          _controller.clear();
          context.router.maybePop();

          Future.delayed(const Duration(milliseconds: 100), () {
            context.read<AddressBookBloc>().add(const AddressBookEvent.fetch());
            context.read<WishlistBloc>().add(const WishlistEvent.fetch());
            context.read<CartBloc>().add(const CartEvent.fetch());
            context.router.maybePop();
          });
        }
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          title: Text(
            'Sign In',
            style: textTheme.labelLarge,
          ),
          leadingWidth: 20,
          centerTitle: false,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.darkGrey,
            ),
            onPressed: () => context.router.maybePop(),
          ),
        ),
        body: Stack(
          children: [
            Image.asset(PngImage.loginBackGround),
            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
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
                              controller: _controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              validator: (value) {
                                return MobileNumber(value ?? '').value.fold(
                                      (failure) => failure.mapOrNull(
                                        empty: (_) =>
                                            "Phone number can't be empty",
                                        subceedLength: (_) =>
                                            'Enter a valid phone number',
                                      ),
                                      (_) => null,
                                    );
                              },
                              onChanged: (value) {
                                if (_triggerValidator) {
                                  _formKey.currentState?.validate();
                                }
                                context.read<LoginFormBloc>().add(
                                      LoginFormEvent.updateMobileNumber(value),
                                    );
                              },
                              onFieldSubmitted: (_) => _onSubmit(context),
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
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            child: BlocConsumer<LoginFormBloc, LoginFormState>(
                              listener: (context, state) {
                                state.authFailureOrSuccessOption.fold(() {},
                                    (either) {
                                  either.fold((l) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(l.failureMessage),
                                      ),
                                    );
                                  }, (r) {
                                    context.read<OtpBloc>().add(
                                          OtpEvent.initializeMobileNumber(
                                            state.mobileNumber,
                                          ),
                                        );
                                    context.router.navigate(const LoginOtp());
                                  });
                                });
                              },
                              listenWhen: (previous, current) =>
                                  previous.authFailureOrSuccessOption !=
                                  current.authFailureOrSuccessOption,
                              buildWhen: (previous, current) =>
                                  previous.isSubmitting != current.isSubmitting,
                              builder: (context, state) {
                                return ElevatedButton(
                                  onPressed: () => _onSubmit(context),
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
