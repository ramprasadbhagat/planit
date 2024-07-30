part of 'user_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.fetch() = _Fetch;
  const factory UserProfileEvent.toggleEditMode() = _ToggleEditMode;
  const factory UserProfileEvent.updateUserClicked() = _UpdateUserClicked;
  const factory UserProfileEvent.nameFieldChange({required String value}) =
      _NameFieldChange;
  const factory UserProfileEvent.emailFieldChange({required String value}) =
      _EmailFieldChange;
  const factory UserProfileEvent.phoneFieldChange({required String value}) =
      _PhoneFieldChange;
  const factory UserProfileEvent.pickImageClick() = _PickImageClick;
  const factory UserProfileEvent.reset() = _Reset;
}
