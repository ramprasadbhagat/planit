part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const BannerState._();

  const factory BannerState({
    required List<Banner> banner,
    required List<Banner> categoryBanner,
    required List<Banner> occassionBanner,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool isCategoryBannerFetching,
    required bool isOccassionBannerFetching,
  }) = _CustomerCodeState;

  factory BannerState.initial() => BannerState(
        banner: <Banner>[],
        categoryBanner: <Banner>[],
        occassionBanner: <Banner>[],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
        isCategoryBannerFetching: false,
        isOccassionBannerFetching: false,
      );
}
