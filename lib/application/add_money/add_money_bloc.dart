import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/application/add_money/ui_state/payment_method.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/payment/entities/payment_options.dart';
import 'package:planit/domain/payment/repository/i_payment_repository.dart';
import 'package:planit/domain/wallet/repository/i_wallet_repository.dart';

part 'add_money_event.dart';
part 'add_money_state.dart';
part 'add_money_bloc.freezed.dart';

class AddMoneyBloc extends Bloc<AddMoneyEvent, AddMoneyState> {
  final IWalletRepository _walletRepository;
  final IPaymentRepository _paymentRepository;
  AddMoneyBloc(this._walletRepository, this._paymentRepository)
      : super(AddMoneyState.initial()) {
    on<AddMoneyEvent>(_onEvent);
  }

  Future<FutureOr<void>> _onEvent(
    AddMoneyEvent event,
    Emitter<AddMoneyState> emit,
  ) async {
    await event.map(
      init: (value) {
        emit(AddMoneyState.initial().copyWith());
      },
      changePaymentMethod: (value) {
        emit(
          state.copyWith(
            selectedPaymentMethod: value.paymentMethod,
          ),
        );
      },
      changeAmount: (value) {
        emit(
          state.copyWith(
            amount: int.tryParse(value.amount) ?? 0,
          ),
        );
      },
      addMoneyClicked: (value) {
        if (state.amount == 0) return;
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );

        _paymentRepository.initiatePayment(
          options: PaymentOptions(
            name: 'PlanIt',
            description: 'Wallet topup',
            amount: state.amount.toDouble(),
            prefill: PrefillData(
              contact: value.mobileNumber.getValue(),
            ),
          ),
          handlePaymentSuccess: (p0) {
            add(_HandlePaymentSuccess(state.amount, p0.paymentId ?? ''));
          },
          handlePaymentFailure: (f) {
            add(
              _HandlePaymentFailed(
                amount: state.amount,
                message: f.message ?? 'Payment Failed',
              ),
            );
          },
          handleExternalWallet: (e) {},
        );
      },
      handlePaymentSuccess: (_HandlePaymentSuccess value) async {
        final failureOrSuccess = await _walletRepository.addMoney(
          amount: state.amount,
          transactionId: value.transactionId,
        );
        emit(
          state.copyWith(
            isLoading: false,
            apiFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
      handlePaymentFailed: (_HandlePaymentFailed value) {
        emit(
          state.copyWith(
            isLoading: false,
            apiFailureOrSuccessOption:
                some(left(ApiFailure.other(value.message))),
          ),
        );
      },
    );
  }
}
