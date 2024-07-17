import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/my_complain/entities/complain.dart';

part 'complain_dto.freezed.dart';
part 'complain_dto.g.dart';

@freezed
class ComplainDto with _$ComplainDto {
  const ComplainDto._();
  const factory ComplainDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(name: 'user_id', defaultValue: '') required String userId,
    @JsonKey(name: 'order_id', defaultValue: '') required String orderId,
    @JsonKey(defaultValue: '') required String name,
    @JsonKey(defaultValue: '') required String email,
    @JsonKey(name: 'complainContent', defaultValue: '')
    required String complainContent,
    @JsonKey(name: 'complainImages', defaultValue: [])
    required List<String> complainImages,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ComplainDto;

  factory ComplainDto.fromJson(Map<String, dynamic> json) =>
      _$ComplainDtoFromJson(json);
  Complain get toDomain => Complain(
        complainId: StringValue(id),
        userId: StringValue(userId),
        orderId: StringValue(orderId),
        name: name,
        email: email,
        complainContent: complainContent,
        complainImages: complainImages,
        createdAt: DateTime.parse(createdAt),
      );
}
