// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/order/entities/order_item.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/order/widgets/rating.dart';
import 'package:planit/presentation/order/widgets/review_product.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class OrderItems extends StatelessWidget {
  final Order order;
  const OrderItems({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        indent: 0,
        endIndent: 0,
        height: 24,
        color: AppColors.lightGray2,
      ),
      primary: false,
      shrinkWrap: true,
      itemCount: order.orderItem.length,
      itemBuilder: (context, index) => OrderItemWidget(
        textTheme: textTheme,
        orderItem: order.orderItem[index],
      ),
    );
  }
}

class OrderItemWidget extends StatelessWidget {
  final OrderItem orderItem;
  const OrderItemWidget({
    super.key,
    required this.textTheme,
    required this.orderItem,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          orderItem.productImage.firstOrNull?.image.displayLabel ?? '',
          errorBuilder: (_, __, ___) {
            return Image.asset(
              PngImage.placeholder,
              width: 70,
              alignment: Alignment.topCenter,
            );
          },
          width: 70,
          alignment: Alignment.topCenter,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderItem.product.productName.displayLabel,
                style: textTheme.bodyMedium?.copyWith(
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Text(
                  orderItem.product.sku.displayLabel,
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 14,
                    color: AppColors.grey2,
                  ),
                ),
              ),
              Text(
                orderItem.product.productDescription.displayLabel,
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 14,
                  color: AppColors.grey2,
                ),
              ),
              Row(
                children: [
                  const StarRatingShow(starValue: 4),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    '4',
                    style: textTheme.bodyMedium?.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Price : ',
                    style: textTheme.labelSmall?.copyWith(fontSize: 14),
                  ),
                  Text(
                    orderItem.product.productMRP.getValue().toPrice(),
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${orderItem.subTotal.getValue().toPrice()} Rs/-',
                    style: textTheme.labelSmall?.copyWith(fontSize: 14),
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                        padding: const EdgeInsets.all(6),
                        width: 22,
                        alignment: Alignment.center,
                        child: Text(
                          orderItem.quantity.getValue().toString(),
                          style: textTheme.labelSmall?.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        ' X ',
                        style: textTheme.labelSmall?.copyWith(fontSize: 14),
                      ),
                      Text(
                        orderItem.unitPrice.getValue().toPrice(),
                        style: textTheme.labelSmall?.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) =>
                            const CommonBottomSheet(
                          child: ReviewDialogBox(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: AppColors.white,
                      minimumSize: const Size(50, 30),
                      side: const BorderSide(color: AppColors.grey2),
                    ),
                    child: const Text(
                      'Rate Now',
                      style: TextStyle(color: AppColors.grey2),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
