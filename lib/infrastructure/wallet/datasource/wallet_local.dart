import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

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
}
