import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';

part 'complain.freezed.dart';

@freezed
class Complain with _$Complain {
  const Complain._();
  const factory Complain({
    required StringValue userId,
    required StringValue orderId,
    required StringValue complainId,
    required String name,
    required String email,
    required String complainContent,
    required List<String> complainImages,
    required DateTime createdAt,
  }) = _Complain;

  factory Complain.empty() => Complain(
        complainId: StringValue(''),
        userId: StringValue(''),
        complainContent: '',
        complainImages: [],
        createdAt: DateTime(2024),
        email: '',
        name: '',
        orderId: StringValue(''),
      );
}
