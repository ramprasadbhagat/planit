import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/presentation/core/pin_code_error/pin_code_error_message.dart';
import 'package:planit/presentation/core/pin_code_error/pin_code_status.dart';
import 'package:planit/presentation/theme/colors.dart';

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
