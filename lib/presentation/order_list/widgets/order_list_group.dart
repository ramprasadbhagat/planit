part of '../order_list_page.dart';

class _OrderListGroup extends StatelessWidget {
  final OrderGroup orderGroup;
  const _OrderListGroup({
    required this.orderGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ordered on ${orderGroup.displayName}',
            style: const TextStyle(
              color: AppColors.darkTeal,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ...orderGroup.order.map(
            (e) => Column(
              children: [
                OrderListItem(
                  order: e,
                ),
                if (e != orderGroup.order.last)
                  const SizedBox(
                    height: 8,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
