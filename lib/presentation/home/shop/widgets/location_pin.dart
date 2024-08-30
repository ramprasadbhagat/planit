import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LocationPin extends StatefulWidget {
  const LocationPin({super.key});

  @override
  State<LocationPin> createState() => _LocationPinState();
}

class _LocationPinState extends State<LocationPin> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: BlocConsumer<PincodeBloc, PincodeState>(
            listenWhen: (previous, current) =>
                previous.apiFailureOrSuccessOption !=
                    current.apiFailureOrSuccessOption ||
                previous.pincode != current.pincode,
            listener: (context, state) {
              state.apiFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.black,
                      content: Text(failure.failureMessage),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  (_) {},
                ),
              );
              if (state.pincode.isNotEmpty) {
                const snackBar = SnackBar(
                  content: Text('Pincode saved successfully'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Skeletonizer(
                    enabled: state.isFetching,
                    child: Row(
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
                          child: Text(
                            'Delivering to  ${state.pincode}',
                            style: textTheme.bodyMedium
                                ?.copyWith(color: AppColors.grey2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Order within 30 mins for delivery by 6 pm on 24-03',
                    style: textTheme.labelSmall?.copyWith(fontSize: 13),
                  ),
                  const SizedBox(width: 4.0),
                ],
              );
            },
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
  final myController = TextEditingController();

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
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 24.0),
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
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(6),
                        ],
                        validator: (value) {
                          if (value == null || value.trim() == '') {
                            return "pincode can't be empty";
                          } else if (value.length < 6) {
                            return 'enter valid pincode';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
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
                child: BlocConsumer<PincodeBloc, PincodeState>(
                  listener: (context, state) {
                    context.router.maybePop();
                  },
                  listenWhen: (previous, current) =>
                      (previous.apiFailureOrSuccessOption !=
                              current.apiFailureOrSuccessOption &&
                          previous.apiFailureOrSuccessOption == dartz.none()) ||
                      current.pincode.isNotEmpty,
                  builder: (context, state) {
                    return SizedBox(
                      width: 169,
                      child: ElevatedButton(
                        onPressed: () {
                          final pincodeValue = myController.text;

                          if (_formKey.currentState!.validate()) {
                            pincodeBloc.add(
                              PincodeEvent.checkPincode(
                                pincode: pincodeValue,
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                        ),
                        child: state.isFetching
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text('Save Changes'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
