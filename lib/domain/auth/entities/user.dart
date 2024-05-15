import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:planit/utils/hive_constants.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @HiveType(
    typeId: HiveConstants.userTypeId,
    adapterName: HiveConstants.userAdapter,
  )
  factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String role,
  }) = _User;
  
  factory User.empty() => User(id: '', role: '');
}
