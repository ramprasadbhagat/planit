import 'dart:async';

import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/auth/repository/i_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  AuthBloc({
    required this.authRepository,
  }) : super(const AuthState.unauthenticated()) {
    on<AuthEvent>(_onEvent);
  }

  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      init: (e) async => add(const AuthEvent.authCheck()),
      authCheck: (e) async {
        final result = await authRepository.tokenValid();
        await result.fold(
          (invalid) async => emit(const AuthState.unauthenticated()),
          (valid) async {
            emit(AuthState.authenticated(auth: valid));
          },
        );
      },
      logout: (e) async {
        await authRepository.logout();
        emit(const AuthState.unauthenticated());
      },
    );
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    // print(change);
  }
}
