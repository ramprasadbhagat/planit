import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

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
                current.apiFailureOrSuccessOption,
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
            },
            builder: (context, state) {
              return Column(
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
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (_) => const PinCodeDialogBox(),
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
                  Text(
                    'Order within 30 mins for delivery by 6 pm on 24-03',
                    style: textTheme.labelSmall,
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
            onTap: () => context.router.navigate(const ProfileRoute()),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightGray2,
              ),
              child: const Icon(Icons.person),
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

    return AlertDialog(
      insetPadding: const EdgeInsets.only(
        top: 50,
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // padding: const EdgeInsetsDirectional.only(top: 30.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SizedBox(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      context.router.maybePop();
                    },
                    child: const Icon(
                      Icons.clear,
                      color: AppColors.grey3,
                      size: 30,
                    ),
                  ),
                ),
                const Text(
                  'Enter your pin code',
                ),
                const SizedBox(
                  height: 10,
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
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  margin: const EdgeInsets.only(top: 50),
                  child: BlocBuilder<PincodeBloc, PincodeState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          final pincodeValue = myController.text;

                          if (_formKey.currentState!.validate()) {
                            pincodeBloc.add(
                              PincodeEvent.checkPincode(
                                pincode: pincodeValue,
                              ),
                            );
                            Navigator.pop(context, true);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: AppColors.black,
                          maximumSize: Size.fromWidth(
                            MediaQuery.sizeOf(context).width * 0.7,
                          ),
                        ),
                        child: state.isFetching
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text('Save Changes'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
