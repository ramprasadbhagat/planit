import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:planit/domain/auth/entities/user.dart';
import 'package:planit/utils/hive_constants.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  @HiveType(
    typeId: HiveConstants.authTypeId,
    adapterName: HiveConstants.authAdapter,
  )
  factory Auth({
    @HiveField(0) required User user,
    @HiveField(1) required String token,
  }) = _Auth;
  factory Auth.empty() => Auth(token: '', user: User.empty());
}
