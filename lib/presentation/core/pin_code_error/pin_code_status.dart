import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/presentation/theme/colors.dart';

class PinCodeStatus extends StatelessWidget {
  const PinCodeStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PincodeBloc, PincodeState>(
      buildWhen: (previous, current) =>
          previous.isChecking != current.isChecking ||
          previous.pinCodeVerified != current.pinCodeVerified ||
          previous.showErrorMessages != current.showErrorMessages ||
          previous.isValidLength != current.isValidLength,
      builder: (context, state) {
        if (!state.isValidLength) {
          return const SizedBox.shrink();
        }
        if (state.isChecking) {
          return const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        }
        if (state.pinCodeVerified) {
          return const _StatusWidget();
        }
        if (state.showErrorMessages) {
          return const _StatusWidget(
            isError: true,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class _StatusWidget extends StatelessWidget {
  final bool isError;

  const _StatusWidget({this.isError = false});
  @override
  Widget build(BuildContext context) {
    const size = 20.0;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: isError ? AppColors.red : AppColors.green,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          isError ? Icons.error : Icons.check,
          color: Colors.white,
          size: size * 0.6,
        ),
      ),
    );
  }
}
