import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/presentation/order_list/widgets/order_actions_button.dart';
import 'package:planit/presentation/order_list/widgets/order_status_widget.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class OrderListItem extends StatelessWidget {
  final Order order;
  const OrderListItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isOOS = order.orderItem
        .any((element) => element.reOrderQuantity.getValue() <= 0);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.noScaling,
      ),
      child: InkWell(
        onTap: () {
          context.router.navigate(
            OrderDetailsRoute(
              order: order,
            ),
          );
        },
        child: Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      SvgImage.orderIdIcon,
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Order ID : ',
                        style: textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: order.id.displayLabel,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        SvgImage.calendar,
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Placed on ${order.getOrderDate}',
                        style: textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      SvgImage.calendar,
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Date of Delivery : ',
                        style: textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: order.deliveryDate.getDisplayValue,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 18,
                  endIndent: 0,
                  indent: 0,
                  color: AppColors.extraLightGrey3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          SvgImage.money,
                          width: 14,
                          height: 14,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Total Amt. : ',
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: order.getTotalPrice,
                                style: textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          SvgImage.wallet,
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text.rich(
                          overflow: TextOverflow.ellipsis,
                          TextSpan(
                            text: 'Payment : ',
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    order.paymentType.getOrDefaultValue('Cash'),
                                style: textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    OrderStatusWidget(
                      status: order.orderStatus,
                    ),
                    Row(
                      children: [
                        OrderActionButton(
                          label: 'Track Your Order',
                          onTap: () => context.router.navigate(
                            TrackOrderRoute(
                              order: order,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OrderActionButton(
                          label: 'Reorder',
                          onTap: isOOS
                              ? null
                              : () {
                                  context
                                      .read<CartBloc>()
                                      .add(CartEvent.reOrder(order: order));
                                  context.router.navigate(const CartRoute());
                                },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
