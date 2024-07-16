import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/user/entities/user.dart';
part 'current_user_dto.freezed.dart';
part 'current_user_dto.g.dart';

@freezed
class CurrentUserDto with _$CurrentUserDto {
  const CurrentUserDto._();

  const factory CurrentUserDto({
    @JsonKey(
      defaultValue: '',
    )
    required String id,
    @JsonKey(
      defaultValue: '',
    )
    required String firstName,
    @JsonKey(
      defaultValue: '',
    )
    required String lastName,
    @JsonKey(
      defaultValue: '',
    )
    required String fullName,
    @JsonKey(
      defaultValue: '',
      name: 'mobile_number',
    )
    required String mobileNumber,
    @JsonKey(
      defaultValue: '',
      name: 'email',
    )
    required String emailAddress,
    @JsonKey(
      defaultValue: '',
    )
    required String profilePicture,
  }) = _CurrentUserDto;

  factory CurrentUserDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserDtoFromJson(json);

  CurrentUser get toDomain => CurrentUser(
        id: StringValue(id),
        fullName: FullName.fromFirstAndLastName(
          firstName: StringValue(firstName),
          lastName: StringValue(lastName),
        ),
        emailAddress: EmailAddress(emailAddress),
        mobileNumber: MobileNumber(mobileNumber),
        profileImage: StringValue(profilePicture),
        isFirstLogin: false,
      );
}
