// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_review/add_review_bloc.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/order/entities/order_item.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/html_text.dart';
import 'package:planit/presentation/core/rating_star.dart';
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
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Text(
                  orderItem.product.sku.displayLabel,
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 13,
                    color: AppColors.grey2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              HtmlText(
                orderItem.product.productDescription.displayLabel,
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 12,
                  color: AppColors.grey2,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              RatingStar(
                value: orderItem.product.rating,
                showAllStar: true,
              ),
              Row(
                children: [
                  Text(
                    'Price : ',
                    style: textTheme.labelSmall?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    orderItem.product.productMRP.getValue().toPrice(),
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${orderItem.subTotal.getValue().toPrice()} Rs/-',
                    style: textTheme.labelSmall?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
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
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        ' X ',
                        style: textTheme.labelSmall?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        orderItem.unitPrice.getValue().toPrice(),
                        style: textTheme.labelSmall?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      context.read<AddReviewBloc>().add(
                            AddReviewEvent.selectOrderItem(
                              orderItem: orderItem,
                            ),
                          );
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (_) => CommonBottomSheet(
                          child: ReviewDialogBox(
                            orderItem: orderItem,
                          ),
                        ),
                      ).then((value) {
                        context.read<AddReviewBloc>().add(
                              const AddReviewEvent.clearOnCancel(),
                            );
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: AppColors.white,
                      minimumSize: const Size(50, 30),
                      side: const BorderSide(color: AppColors.grey2),
                    ),
                    child: const Text(
                      'Rate Now',
                      style: TextStyle(
                        color: AppColors.grey2,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
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
