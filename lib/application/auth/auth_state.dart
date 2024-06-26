part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({required Auth auth}) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
