import 'package:flutter/material.dart';
import 'package:planit/domain/order/order_status.dart';
import 'package:planit/presentation/theme/colors.dart';

class OrderStatusWidget extends StatelessWidget {
  final OrderStatus status;
  const OrderStatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        status.when(
          processing: (_) => const Icon(
            Icons.local_shipping_outlined,
            color: AppColors.black,
            size: 20,
          ),
          delivered: () => const Icon(
            Icons.circle,
            color: AppColors.green,
            size: 10,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          status.getDisplayStatus,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }
}
