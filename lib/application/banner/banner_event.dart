part of 'banner_bloc.dart';

@freezed
class BannerEvent with _$BannerEvent {
  const factory BannerEvent.initialized() = _Initialized;
  const factory BannerEvent.fetch() = _Fetch;
}