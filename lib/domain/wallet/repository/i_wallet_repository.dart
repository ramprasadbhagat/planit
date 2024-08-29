import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/wallet/entities/transaction_history.dart';

abstract class IWalletRepository {
  Future<Either<ApiFailure, Unit>> addMoney({
    required int amount,
    required String transactionId,
  });
  Future<Either<ApiFailure, int>> getBalance();
  Future<Either<ApiFailure, List<TransactionHistory>>>
      fetchTransactionsHistory();
}
