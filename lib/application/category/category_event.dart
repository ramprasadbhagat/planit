part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.initialized() = _Initialized;
  const factory CategoryEvent.fetch() = _Fetch;
  const factory CategoryEvent.select(Category category) = _Select;
  const factory CategoryEvent.selectOccasion(bool isSelected) = _SelectOccasion;
}
