import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/wallet/wallet_bloc.dart';
import 'package:planit/presentation/my_wallet/widget/transaction_history_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transaction History',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Expanded(
            child: BlocBuilder<WalletBloc, WalletState>(
              builder: (context, state) {
                return Skeletonizer(
                  enabled: state.isTransactionLoading,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemCount: state.transactions.length,
                    itemBuilder: (_, index) => TransactionHistoryItem(
                      transaction: state.transactions[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
