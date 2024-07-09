import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'user.freezed.dart';

@freezed
class CurrentUser with _$CurrentUser {
  const factory CurrentUser({
    required StringValue id,
    required StringValue firstName,
    required StringValue lastName,
    required EmailAddress emailAddress,
    required MobileNumber mobileNumber,
    required StringValue profileImage,
    required bool isFirstLogin,
  }) = _CurrentUser;

  factory CurrentUser.empty() => CurrentUser(
        id: StringValue(''),
        firstName: StringValue(''),
        lastName: StringValue(''),
        emailAddress: EmailAddress(''),
        profileImage: StringValue(''),
        isFirstLogin: false,
        mobileNumber: MobileNumber(''),
      );
}
