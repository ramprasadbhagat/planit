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
      updateMobileNumber: (e) {
        emit(
          state.copyWith(
            mobileNumber: MobileNumber(e.mobileStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      sendOtp: (e) async {
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
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (loginOtp) async {
            emit(
              state.copyWith(
                isSubmitting: false,
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
