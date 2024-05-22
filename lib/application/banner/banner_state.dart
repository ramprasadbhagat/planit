part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const BannerState._();

  const factory BannerState({
    required List<Banner> banner,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _CustomerCodeState;

  factory BannerState.initial() => BannerState(
        banner: <Banner>[],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );
}
