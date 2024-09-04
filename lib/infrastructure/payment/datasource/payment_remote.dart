import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/payment/entities/payment_options.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/utils/storage_service.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentRemoteDatasource {
  final Razorpay razorpay;
  final Config config;
  final HttpService httpService;
  final StorageService storageService;

  PaymentRemoteDatasource({
    required this.razorpay,
    required this.config,
    required this.httpService,
    required this.storageService,
  });

  void initiatePayment({
    required PaymentOptions options,
    required Function(PaymentSuccessResponse p1) handlePaymentSuccess,
    required Function(PaymentFailureResponse p1) handlePaymentFailure,
    required Function(ExternalWalletResponse p1) handleExternalWallet,
  }) {
    razorpay.open({
      'key': config.razorPayTestApiKey,
      'amount': (options.amount * 100),
      'name': options.name,
      'description': options.description,
      'prefill': {
        'contact': options.prefill.contact,
        'email': options.prefill.email,
      },
    });
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  Future<Unit> deductPaymentFromWallet({
    required int amount,
    required String transactionId,
  }) async {
    final userId = storageService.getUserId();

    final res = await httpService.request(
      method: 'PATCH',
      url: '/users/deductBalance/',
      data: {
        'userId': userId,
        'amount': amount,
        'transaction_id': transactionId,
      },
    );

    log('deduct: ${res.data}');
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
