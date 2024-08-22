import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/payment/entities/payment_options.dart';
import 'package:planit/domain/payment/repository/i_payment_repository.dart';
import 'package:planit/infrastructure/payment/datasource/payment_local.dart';
import 'package:planit/infrastructure/payment/datasource/payment_remote.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayPaymentRepository implements IPaymentRepository {
  final Config config;
  final RazorpayPaymentRemoteDatasource remoteDatasource;
  final PaymentLocalDatasource localDatasource;

  RazorpayPaymentRepository({
    required this.config,
    required this.remoteDatasource,
    required this.localDatasource,
  });
  @override
  Either<ApiFailure, Unit> initiatePayment({
    required PaymentOptions options,
    required Function(PaymentSuccessResponse p1) handlePaymentSuccess,
    required Function(PaymentFailureResponse p1) handlePaymentFailure,
    required Function(ExternalWalletResponse p1) handleExternalWallet,
  }) {
    if (config.appFlavor == Flavor.mock) {
      try {
        localDatasource.initiatePayment(
          options: options,
          handlePaymentSuccess: handlePaymentSuccess,
          handlePaymentFailure: handlePaymentFailure,
          handleExternalWallet: handleExternalWallet,
        );

        return const Right(unit);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      remoteDatasource.initiatePayment(
        options: options,
        handlePaymentSuccess: handlePaymentSuccess,
        handlePaymentFailure: handlePaymentFailure,
        handleExternalWallet: handleExternalWallet,
      );
      return right(unit);
    } catch (e) {
      return left(FailureHandler.handleFailure(e));
    }
  }
}
