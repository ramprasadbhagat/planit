import 'package:flutter/material.dart';
import 'package:planit/domain/wallet/entities/transaction_history.dart';
import 'package:planit/presentation/theme/colors.dart';

class TransactionStatusChip extends StatelessWidget {
  final TransactionType type;
  const TransactionStatusChip({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: type == TransactionType.CR ? AppColors.green : AppColors.red,
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          type.label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 10,
                color: AppColors.white,
              ),
        ),
      ),
    );
  }
}
