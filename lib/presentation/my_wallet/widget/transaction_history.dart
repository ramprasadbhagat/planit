import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/wallet/wallet_bloc.dart';
import 'package:planit/domain/wallet/entities/transaction_history.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scroll_list.dart';
import 'package:planit/presentation/my_wallet/widget/transaction_history_item.dart';

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
                return ScrollList<TransactionHistory>(
                  noRecordFoundWidget: const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                    ),
                    child: NoData(
                      message: 'No Transaction found',
                    ),
                  ),
                  onRefresh: () => context
                      .read<WalletBloc>()
                      .add(const WalletEvent.fetchTransactionHistory()),
                  onLoadingMore: () => context
                      .read<WalletBloc>()
                      .add(const WalletEvent.fetchMoreTransactionEvent()),
                  isLoading: state.isTransactionLoading,
                  itemBuilder: (_, index, item) => TransactionHistoryItem(
                    transaction: state.transactions[index],
                  ),
                  items: state.transactions,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
