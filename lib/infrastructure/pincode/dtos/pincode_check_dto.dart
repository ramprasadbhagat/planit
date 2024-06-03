import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/pincode/entities/pincode_check.dart';

part 'pincode_check_dto.freezed.dart';
part 'pincode_check_dto.g.dart';

@freezed
class PincodeCheckDto with _$PincodeCheckDto {
  const PincodeCheckDto._();
  factory PincodeCheckDto({
    @JsonKey(defaultValue: '') required String pincode,
  }) = _PincodeCheckDto;

  PincodeCheck get toDomain => PincodeCheck(pincode: pincode);

  factory PincodeCheckDto.fromJson(Map<String, dynamic> json) =>
      _$PincodeCheckDtoFromJson(json);
}
