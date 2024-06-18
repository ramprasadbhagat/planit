import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/address_book/repository/i_address_book_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/infrastructure/address_book/datasources/address_book_local.dart';
import 'package:planit/infrastructure/address_book/datasources/address_book_remote.dart';

class AddressBookRepository extends IAddressBookRepository {
  final Config config;
  final AddressBookLocalDataSource localDataSource;
  final AddressBookRemoteDataSource remoteDataSource;

  AddressBookRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<ApiFailure, List<AddressBook>>> getAddressList() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final data = await localDataSource.getAddressList();

        return Right(data);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final list = await remoteDataSource.getAddressList();

      return Right(list);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addAddressBook({
    required AddressBook addressBook,
  }) async {
    try {
      final unit = await remoteDataSource.addAddressBook(
        addressBook: addressBook,
      );

      return Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> deleteAddressBook({
    required String id,
  }) async {
    try {
      final unit = await remoteDataSource.deleteAddressBook(
        id: id,
      );

      return Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> editAddressBook({
    required AddressBook addressBook,
  }) async {
    try {
      final unit = await remoteDataSource.editAddressBook(
        addressBook: addressBook,
      );

      return Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> makeDefaultAddress({
    required String id,
  }) async {
    try {
      final unit = await remoteDataSource.makeDefaultAddress(
        id: id,
      );

      return Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
