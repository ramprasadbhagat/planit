import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/infrastructure/address_book/dtos/address_book_dto.dart';

class AddressBookLocalDataSource {
  const AddressBookLocalDataSource();

  Future<List<AddressBook>> getAddressList() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/address_book.json'),
    );
    final data = res['items'];
    return List.from(data)
        .map((e) => AddressBookDto.fromJson(e).toDomain)
        .toList();
  }
}
