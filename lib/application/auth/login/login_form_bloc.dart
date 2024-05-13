import 'package:dartz/dartz.dart';
import 'package:planit/domain/auth/repository/i_auth_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'login_form_bloc.freezed.dart';

part 'login_form_event.dart';

part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthRepository authRepository;

  LoginFormBloc({
    required this.authRepository,
  }) : super(LoginFormState.initial()) {
    on<LoginFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
    LoginFormEvent event,
    Emitter<LoginFormState> emit,
  ) async {
    await event.map(
      mobileNumberChanged: (e) {
        emit(
          state.copyWith(
            mobileNumber: MobileNumber(e.mobileStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      otpChanged: (e) {
        emit(
          state.copyWith(
            otp: OTP(e.otpStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      initiateLogin: (e) async {
        final isMobileNumberValid = state.mobileNumber.isValid();

        if (isMobileNumberValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );
          final failureOrSuccess = await authRepository.initiateLogin(
            mobileNumber: state.mobileNumber,
          );

          await failureOrSuccess.fold(
            (_) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: true,
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
            (login) async {
              await authRepository.storeToken(
                token: login.access,
              );

              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: false,
                  mobileNumber: MobileNumber(''),
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
          );
        } else {
          emit(state.copyWith(showErrorMessages: true));
        }
      },
      verifyOTP: (e) async {
        final isMobileNumberValid = state.mobileNumber.isValid();
        final isOTPValid = state.otp.isValid();

        if (isMobileNumberValid && isOTPValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );
          final failureOrSuccess = await authRepository.verifyOTP(
            mobileNumber: state.mobileNumber,
            otp: state.otp,
          );

          await failureOrSuccess.fold(
            (_) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: true,
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
            (login) async {
              await authRepository.storeToken(
                token: login.access,
              );

              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: false,
                  mobileNumber: MobileNumber(''),
                  otp: OTP(''),
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
          );
        } else {
          emit(state.copyWith(showErrorMessages: true));
        }
      },
    );
  }
}
