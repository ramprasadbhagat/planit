import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/wallet/repository/i_wallet_repository.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final IWalletRepository _walletRepository;
  WalletBloc(this._walletRepository) : super(WalletState.initial()) {
    on<WalletEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    WalletEvent event,
    Emitter<WalletState> emit,
  ) async {
    await event.map(
      fetchBalance: (_) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final failureOrSuccess = await _walletRepository.getBalance();
        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isLoading: false,
                balance: r,
              ),
            );
          },
        );
      },
      fetchTransactionHistory: (_) {},
    );
  }
}
