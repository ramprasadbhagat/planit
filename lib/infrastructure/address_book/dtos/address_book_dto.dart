import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';

part 'address_book_dto.freezed.dart';
part 'address_book_dto.g.dart';

@freezed
class AddressBookDto with _$AddressBookDto {
  const AddressBookDto._();
  factory AddressBookDto({
    @JsonKey(
      defaultValue: '',
      readValue: idFromJson,
    )
    required String id,
    @JsonKey(name: 'user_id', defaultValue: '') required String userId,
    @JsonKey(defaultValue: '') required String fullName,
    @JsonKey(defaultValue: '') required String phoneNumber,
    @JsonKey(defaultValue: '') required String pincode,
    @JsonKey(defaultValue: '') required String address,
    @JsonKey(defaultValue: 0) required int isDefault,
  }) = _AddressBookDto;

  factory AddressBookDto.fromJson(Map<String, dynamic> json) =>
      _$AddressBookDtoFromJson(json);

  AddressBook get toDomain => AddressBook(
        id: id,
        userId: userId,
        fullName: fullName,
        phoneNumber: phoneNumber,
        pincode: pincode,
        address: address,
        isDefault: isDefault == 1,
      );
}

String idFromJson(json, key) {
  if (json[key] != null) return json[key];
  if (json['_id'] != null) return json['_id'];
  return '';
}
