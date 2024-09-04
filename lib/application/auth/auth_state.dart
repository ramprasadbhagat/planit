part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated({required Auth auth}) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;

  bool get isUnAuthenticated => when(
        authenticated: (_) => false,
        unauthenticated: () => true,
        initial: () => false,
      );
}
