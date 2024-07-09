part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isFetching,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required CurrentUser user,
  }) = _UserState;

  factory UserState.initial() => UserState(
        isFetching: false,
        apiFailureOrSuccessOption: none(),
        user: CurrentUser.empty(),
      );
}
