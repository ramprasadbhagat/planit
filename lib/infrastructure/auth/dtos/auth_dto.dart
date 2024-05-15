import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/infrastructure/auth/dtos/user_dto.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class AuthDto with _$AuthDto {
  const AuthDto._();
  factory AuthDto({
    required UserDto user,
    @JsonKey(defaultValue: '') required String token,
  }) = _AuthDto;

  Auth get toDomain => Auth(user: user.toDomain, token: token);

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
