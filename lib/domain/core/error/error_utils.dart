import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';

class ErrorUtils {
  static void handleApiFailure(BuildContext context, ApiFailure failure) {
    final isTokenExpiredFailure =
        failure == const ApiFailure.authenticationFailed();
    final message = failure.failureMessage;
    CustomSnackbar.showErrorMessage(
      context,
      message,
    );
    if (isTokenExpiredFailure) {
      context.read<AuthBloc>().add(const AuthEvent.logout());
    }
  }
}
