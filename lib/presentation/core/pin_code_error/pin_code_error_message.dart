import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/presentation/theme/colors.dart';

class PinCodeErrorMessage extends StatelessWidget {
  const PinCodeErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PincodeBloc, PincodeState>(
      buildWhen: (previous, current) =>
          previous.showErrorMessages != current.showErrorMessages,
      builder: (context, state) {
        if (state.showErrorMessages) {
          return const Material(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: AppColors.lightRed,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      "Sorry, we do not serve your area yet. We're working on it and hope to be able to serve you very soon!\n\nOr else,\nChoose different pin code to proceed",
                      style: TextStyle(
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
