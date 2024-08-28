import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:planit/domain/payment/entities/payment_options.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentLocalDatasource {
  const PaymentLocalDatasource();
  void initiatePayment({
    required PaymentOptions options,
    required Function(PaymentSuccessResponse p1) handlePaymentSuccess,
    required Function(PaymentFailureResponse p1) handlePaymentFailure,
    required Function(ExternalWalletResponse p1) handleExternalWallet,
  }) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        handlePaymentSuccess(
          PaymentSuccessResponse('payemntId', 'orderId', 'signature', {}),
        );
      },
    );
  }

  Future<Unit> deductAmount() {
    return Future.delayed(
      Durations.extralong1,
      () => unit,
    );
  }
}
