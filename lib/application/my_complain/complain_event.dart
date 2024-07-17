part of 'complain_bloc.dart';

@freezed
class ComplainEvent with _$ComplainEvent {
  const factory ComplainEvent.initialized() = _Initialized;
  const factory ComplainEvent.fetch() = _Fetch;
  const factory ComplainEvent.addComplain({
    required String name,
    required String email,
    required String orderId,
    required String complainContent,
    required File? file,
  }) = _AddComplain;
  const factory ComplainEvent.selectImage() = _Select;
  const factory ComplainEvent.removeImage() = _Remove;
  const factory ComplainEvent.selectOrderId({required String value}) =
      _SelectDropdown;
  const factory ComplainEvent.removeOrderId() = _RemoveDropdown;
}
