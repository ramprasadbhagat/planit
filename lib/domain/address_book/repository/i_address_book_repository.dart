import 'package:dartz/dartz.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/core/error/api_failures.dart';

abstract class IAddressBookRepository {
  Future<Either<ApiFailure, List<AddressBook>>> getAddressList();
  Future<Either<ApiFailure, Unit>> addAddressBook({
    required AddressBook addressBook,
  });
  Future<Either<ApiFailure, Unit>> deleteAddressBook({
    required String id,
  });
  Future<Either<ApiFailure, Unit>> makeDefaultAddress({
    required String id,
  });
  Future<Either<ApiFailure, Unit>> editAddressBook({
    required AddressBook addressBook,
  });
}
