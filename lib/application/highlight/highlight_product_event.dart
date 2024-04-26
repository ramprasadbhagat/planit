part of 'highlight_product_bloc.dart';

@freezed
class HighlightProductEvent with _$HighlightProductEvent {
  const factory HighlightProductEvent.initialized() = _Initialized;
  const factory HighlightProductEvent.fetch() = _Fetch;
}
