import 'package:flutter/material.dart';
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
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: 10,
              itemBuilder: (_, index) => TransactionHistoryItem(
                index: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
