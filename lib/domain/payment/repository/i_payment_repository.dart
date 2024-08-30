import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/payment/entities/payment_options.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

abstract class IPaymentRepository {
  Either<ApiFailure, Unit> initiatePayment({
    required PaymentOptions options,
    required Function(PaymentSuccessResponse) handlePaymentSuccess,
    required Function(PaymentFailureResponse) handlePaymentFailure,
    required Function(ExternalWalletResponse) handleExternalWallet,
  });
  Future<Either<ApiFailure, Unit>> processPaymentFromWallet({
    required int amount,
    required String transactionId,
  });
}
