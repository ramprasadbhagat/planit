import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/wallet/entities/transaction_history_response.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/wallet/dtos/transaction_history_response_dto.dart';
import 'package:planit/utils/storage_service.dart';

class WalletRemoteDatasource {
  final HttpService httpService;
  final StorageService storageService;

  WalletRemoteDatasource({
    required this.httpService,
    required this.storageService,
  });
  Future<Unit> addMoney({
    required int amount,
    required String transactionId,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'PATCH',
      url: 'users/updateBalance',
      data: {
        'userId': userId,
        'amount': amount,
        'transaction_id': transactionId,
      },
    );
    _exceptionChecker(res: res);
    return unit;
  }

  Future<int> fetchBalance() async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'GET',
      url: 'users/getBalance/$userId',
    );
    _exceptionChecker(res: res);
    final balance = res.data['WalletBalance'];
    if (balance is int) {
      return balance;
    } else {
      return int.tryParse(balance) ?? 0;
    }
  }

  Future<TransactionHistoryResponse> fetchTransactionsHistory({
    int pageSize = 10,
    int pageNumber = 1,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'GET',
      url:
          'transactionHistory/user/$userId?pageSize=$pageSize&pageNumber=$pageNumber',
    );
    _exceptionChecker(res: res);

    return TransactionHistoryResponseDto.fromJson(res.data).toDomain;
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
