import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planit/domain/wallet/entities/transaction_history_response.dart';
import 'package:planit/infrastructure/wallet/dtos/transaction_history_response_dto.dart';

class WalletLocalDatasource {
  const WalletLocalDatasource();

  Future<Unit> addMoney() async {
    await Future.delayed(const Duration(seconds: 3));
    return unit;
  }

  Future<int> fetchBalance() {
    return Future.delayed(
      Durations.extralong4,
      () => 200,
    );
  }

  Future<TransactionHistoryResponse> fetchTransactionsHistory() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/transaction_histories.json'),
    );

    return TransactionHistoryResponseDto.fromJson(res.data).toDomain;
  }
}
