import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:planit/utils/hive_constants.dart';

part 'pincode.freezed.dart';
part 'pincode.g.dart';

@freezed
class PinCode with _$PinCode {
  @HiveType(
    typeId: HiveConstants.pinCodeId,
    adapterName: HiveConstants.pinCodeAdapter,
  )
  factory PinCode({
    @HiveField(0) required String pin,
  }) = _PinCode;

  factory PinCode.empty() => PinCode(pin: '');
}
