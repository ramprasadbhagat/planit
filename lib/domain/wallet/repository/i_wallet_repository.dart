import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/wallet/entities/transaction_history_response.dart';

abstract class IWalletRepository {
  Future<Either<ApiFailure, Unit>> addMoney({
    required int amount,
    required String transactionId,
  });
  Future<Either<ApiFailure, int>> getBalance();
  Future<Either<ApiFailure, TransactionHistoryResponse>>
      fetchTransactionsHistory({
    int pageSize = 10,
    int pageNumber = 1,
  });
}
