import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/pincode/entities/pincode.dart';

part 'pincode_dto.freezed.dart';
part 'pincode_dto.g.dart';

@freezed
class PincodeDto with _$PincodeDto {
  const PincodeDto._();
  factory PincodeDto({
    @JsonKey(defaultValue: '') required String pincode,
  }) = _PincodeDto;

  Pincode get toDomain => Pincode(pincode: pincode);

  factory PincodeDto.fromJson(Map<String, dynamic> json) =>
      _$PincodeDtoFromJson(json);
}
