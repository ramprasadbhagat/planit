import 'package:dartz/dartz.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/auth/repository/i_auth_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'otp_bloc.freezed.dart';

part 'otp_event.dart';

part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  final IAuthRepository authRepository;

  OtpBloc({
    required this.authRepository,
  }) : super(OtpState.initial()) {
    on<OtpEvent>(_onEvent);
  }

  Future<void> _onEvent(
    OtpEvent event,
    Emitter<OtpState> emit,
  ) async {
    await event.map(
      initializeMobileNumber: (e) async =>
          emit(state.copyWith(mobileNumber: e.mobileNumber)),
      updateOtp: (e) {
        emit(
          state.copyWith(
            otp: OTP(e.otp),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      resendOtp: (e) async {
        emit(
          state.copyWith(
            resentOtpLoading: true,
            otp: OTP(''),
            authFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await authRepository.initiateLogin(
          mobileNumber: state.mobileNumber,
        );

        failureOrSuccess.fold(
          (_) {
            emit(
              state.copyWith(
                resentOtpLoading: false,
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (loginOtp) {
            emit(
              state.copyWith(
                resentOtpLoading: false,
                otp: loginOtp.otp,
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
      submitOtp: (e) async {
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
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (authData) async {
            await authRepository.storeToken(
              auth: authData,
            );

            emit(
              state.copyWith(
                isSubmitting: false,
                auth: authData,
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
