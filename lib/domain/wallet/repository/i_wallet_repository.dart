import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';

abstract class IWalletRepository {
  Future<Either<ApiFailure, Unit>> addMoney(int amount);
  Future<Either<ApiFailure, int>> getBalance();
}
