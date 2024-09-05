import 'package:flutter/material.dart';
import 'package:planit/domain/core/value/value_objects.dart';

class OrderStatusWidget extends StatelessWidget {
  final OrderStatus status;
  const OrderStatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        status.orderListStatusIcon,
        const SizedBox(
          width: 4,
        ),
        Text(
          status.displayStatus,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }
}
