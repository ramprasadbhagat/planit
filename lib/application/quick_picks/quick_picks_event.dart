part of 'quick_picks_bloc.dart';

@freezed
class QuickPicksEvent with _$QuickPicksEvent {
  const factory QuickPicksEvent.initialized() = _Initialized;
  const factory QuickPicksEvent.fetch() = _Fetch;
}
