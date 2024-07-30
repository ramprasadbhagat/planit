import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'user.freezed.dart';

@freezed
class CurrentUser with _$CurrentUser {
  const CurrentUser._();

  const factory CurrentUser({
    required StringValue id,
    required FullName fullName,
    required EmailAddress emailAddress,
    required MobileNumber mobileNumber,
    required StringValue profileImage,
    required bool isFirstLogin,
  }) = _CurrentUser;

  factory CurrentUser.empty() => CurrentUser(
        id: StringValue(''),
        fullName: FullName(''),
        emailAddress: EmailAddress(''),
        profileImage: StringValue(''),
        isFirstLogin: false,
        mobileNumber: MobileNumber(''),
      );

  bool get isValid =>
      fullName.isValid() && emailAddress.isValid() && mobileNumber.isValid();

  bool get isEmpty => this == CurrentUser.empty();
}
