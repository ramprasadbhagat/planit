import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/auth/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  factory UserDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'role', defaultValue: '') required String role,
  }) = _UserDto;

  User get toDomain => User(id: id, role: role);

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
