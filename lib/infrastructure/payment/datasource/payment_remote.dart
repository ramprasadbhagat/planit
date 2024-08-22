import 'package:planit/config.dart';
import 'package:planit/domain/payment/entities/payment_options.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayPaymentRemoteDatasource {
  final Razorpay razorpay;
  final Config config;

  RazorpayPaymentRemoteDatasource({
    required this.razorpay,
    required this.config,
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
        'contact': options.prefill.email,
        'email': options.prefill.email,
      },
    });
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }
}
