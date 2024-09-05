import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/core/pin_code_error/pin_code_error_message.dart';
import 'package:planit/presentation/core/pin_code_error/pin_code_status.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';
import 'package:planit/utils/svg_image.dart';

class DeliveringTo extends StatelessWidget {
  const DeliveringTo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: BlocListener<PincodeBloc, PincodeState>(
            listenWhen: (previous, current) =>
                previous.isSaving != current.isSaving && !current.isSaving,
            listener: (context, state) {
              state.apiFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (l) {
                    CustomSnackbar.showErrorMessage(context, l.failureMessage);
                    context.router.maybePop();
                  },
                  (_) {},
                ),
              );
              CustomSnackbar.showSuccessMessage(
                context,
                StringConstant.pinCodeSavedSuccessfully,
              );
              context.router.maybePop();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      SvgImage.locationPin,
                    ),
                    const SizedBox(width: 4.0),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) =>
                              const CommonBottomSheet(
                            child: PinCodeDialogBox(),
                          ),
                        );
                      },
                      child: BlocBuilder<PincodeBloc, PincodeState>(
                        buildWhen: (previous, current) =>
                            previous.pincode != current.pincode,
                        builder: (context, state) {
                          return Text(
                            'Delivering to  ${state.pincode}',
                            style: textTheme.bodyMedium,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  'Order within 30 mins for delivery by 6 pm on 24-03',
                  style: textTheme.labelSmall?.copyWith(fontSize: 13),
                ),
                const SizedBox(width: 4.0),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              if (context.read<AuthBloc>().state ==
                  const AuthState.unauthenticated()) {
                context.router.navigate(const LoginRoute());
              } else {
                context.router.navigate(const ProfileRoute());
              }
            },
            child: BlocBuilder<UserProfileBloc, UserProfileState>(
              buildWhen: (previous, current) => previous.user != current.user,
              builder: (context, state) {
                if (state.user.profileImage.isValid()) {
                  return Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightGray2,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: state.user.profileImage.getValue(),
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.lightGray2,
                        ),
                        child: const Icon(Icons.person),
                      ),
                    ),
                  );
                }

                return Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightGray2,
                  ),
                  child: const Icon(Icons.person),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class PinCodeDialogBox extends StatefulWidget {
  const PinCodeDialogBox({super.key});

  @override
  State<PinCodeDialogBox> createState() => _PinCodeDialogBoxState();
}

class _PinCodeDialogBoxState extends State<PinCodeDialogBox> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController myController;

  @override
  void initState() {
    super.initState();
    context
        .read<PincodeBloc>()
        .add(const PincodeEvent.resetVerificationStatus());
    myController =
        TextEditingController(text: context.read<PincodeBloc>().state.pincode);
  }

  @override
  void dispose() {
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pincodeBloc = context.read<PincodeBloc>();

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SizedBox(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Enter your pin code',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: myController,
                        keyboardType: TextInputType.number,
                        onChanged: (val) {
                          pincodeBloc.add(
                            PincodeEvent.checkPincode(
                              pincode: val,
                            ),
                          );
                          if (val.length == 6) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(6),
                        ],
                        decoration: InputDecoration(
                          suffix: const PinCodeStatus(),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Pin Code',
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
                      const SizedBox(
                        height: 10,
                      ),
                      const PinCodeErrorMessage(),
                    ],
                  ),
                ),
              ),
              Container(
                height: 70,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 169,
                  child: BlocBuilder<PincodeBloc, PincodeState>(
                    buildWhen: (previous, current) =>
                        previous.isSaving != current.isSaving ||
                        previous.pinCodeVerified != current.pinCodeVerified,
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: state.pinCodeVerified
                            ? () {
                                final pincodeValue = myController.text;

                                if (_formKey.currentState!.validate()) {
                                  pincodeBloc.add(
                                    PincodeEvent.savePincode(
                                      pincode: pincodeValue,
                                    ),
                                  );
                                }
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                        ),
                        child: state.isSaving
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text('Save Changes'),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
