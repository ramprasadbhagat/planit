import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/wallet/entities/transaction_history_response.dart';
import 'package:planit/domain/wallet/repository/i_wallet_repository.dart';
import 'package:planit/infrastructure/wallet/datasource/wallet_local.dart';
import 'package:planit/infrastructure/wallet/datasource/wallet_remote.dart';

class WalletRepository implements IWalletRepository {
  final Config config;
  final WalletRemoteDatasource remoteDatasource;
  final WalletLocalDatasource localDatasource;

  WalletRepository({
    required this.config,
    required this.remoteDatasource,
    required this.localDatasource,
  });
  @override
  Future<Either<ApiFailure, Unit>> addMoney({
    required int amount,
    required String transactionId,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final res = await localDatasource.addMoney();

        return Right(res);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }

    try {
      final res = await remoteDatasource.addMoney(
        amount: amount,
        transactionId: transactionId,
      );

      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, int>> getBalance() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final res = await localDatasource.fetchBalance();

        return Right(res);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }

    try {
      final res = await remoteDatasource.fetchBalance();

      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, TransactionHistoryResponse>>
      fetchTransactionsHistory({
    int pageSize = 10,
    int pageNumber = 1,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final res = await localDatasource.fetchTransactionsHistory();

        return Right(res);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }

    try {
      final res = await remoteDatasource.fetchTransactionsHistory(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );

      return Right(res);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
