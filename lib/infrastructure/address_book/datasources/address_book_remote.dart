import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/address_book/dtos/address_book_dto.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/utils/storage_service.dart';

class AddressBookRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  AddressBookRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<List<AddressBook>> getAddressList() async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'GET',
      url: 'deliveryaddress/?user_id=$userId',
    );
    _exceptionChecker(res: res);
    final data = res.data['items'];
    return List.from(data)
        .map((e) => AddressBookDto.fromJson(e).toDomain)
        .toList();
  }

  Future<Unit> addAddressBook({
    required AddressBook addressBook,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: 'deliveryaddress',
      data: {
        'user_id': userId,
        'fullName': addressBook.fullName,
        'phoneNumber': addressBook.phoneNumber,
        'pincode': addressBook.pincode,
        'address': addressBook.address,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> deleteAddressBook({
    required String id,
  }) async {
    final res = await httpService.request(
      method: 'DELETE',
      url: 'deliveryaddress/$id',
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> makeDefaultAddress({
    required String id,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'PATCH',
      url: 'deliveryaddress/makeDefault',
      data: {
        'id': id,
        'userId': userId,
        'isDefault': '1',
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<Unit> editAddressBook({
    required AddressBook addressBook,
  }) async {
    final res = await httpService.request(
      method: 'PUT',
      url: 'deliveryaddress/edit',
      data: {
        'id': addressBook.id,
        'fullName': addressBook.fullName,
        'phoneNumber': addressBook.phoneNumber,
        'pincode': addressBook.pincode,
        'address': addressBook.address,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}
