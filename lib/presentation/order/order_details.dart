import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_review/add_review_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/tag.dart';
import 'package:planit/presentation/order/widgets/orderItems.dart';
import 'package:planit/presentation/order/widgets/review_order.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:planit/utils/png_image.dart';

@RoutePage()
class OrderDetailsPage extends StatelessWidget {
  final Order order;
  const OrderDetailsPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isOOS = order.orderItem
        .any((element) => element.reOrderQuantity.getValue() <= 0);
    context.read<AddReviewBloc>().add(AddReviewEvent.selectOrder(order: order));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 30,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.lightGrey,
          ),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 188, 186, 186),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 0.8,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Summary',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Tag(
                                label: order.orderStatus.displayStatus,
                                backgroundColor: order.orderStatus.tagColor,
                                labelColor: order.orderStatus.tagLabelColor,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 14,
                                color: AppColors.textBlack,
                              ),
                              Text(
                                ' Order ID : ',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                order.id.displayLabel,
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 14,
                                color: AppColors.textBlack,
                              ),
                              Text(
                                ' Invoice ID: ',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                order.invoiceId.displayLabel,
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.date_range_outlined,
                                size: 14,
                                color: AppColors.textBlack,
                              ),
                              Text(
                                ' Order Date : ',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                order.getOrderDate,
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.date_range_outlined,
                                size: 14,
                                color: AppColors.textBlack,
                              ),
                              Text(
                                ' Delivery Date : ',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                order.deliveryDate.getDisplayValue,
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.timer_outlined,
                                size: 14,
                                color: AppColors.textBlack,
                              ),
                              Text(
                                ' Time : ',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                order.deliveryTime.displayLabel,
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 188, 186, 186),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 0.8,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.room_outlined,
                                size: 14,
                                color: AppColors.black,
                              ),
                              Text(
                                'Delivery Address',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.person_2_outlined,
                                size: 14,
                                color: AppColors.textBlack,
                              ),
                              Text(
                                ' Recipient Name : ',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textBlack,
                                ),
                              ),
                              Text(
                                order.deliveryAddress.firstOrNull?.fullName ??
                                    'NA',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textBlack,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.call,
                                size: 14,
                                color: AppColors.textBlack,
                              ),
                              Text(
                                ' Mobile Number : ',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                order.getDeliveryPhoneNumber,
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.home_outlined,
                                size: 14,
                                color: AppColors.textBlack,
                              ),
                              Text(
                                ' Address : ',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  order.getDeliveryAddress,
                                  style: textTheme.titleMedium?.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 188, 186, 186),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 0.8,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                PngImage.orderItemIcon,
                                height: 15.14,
                                width: 15,
                              ),
                              Text(
                                ' Order Items',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          OrderItems(
                            order: order,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 188, 186, 186),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 0.8,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                PngImage.dollar,
                                height: 12,
                                width: 15,
                              ),
                              Text(
                                ' Payment Details',
                                style: textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const Spacer(),
                              if (order.paymentStatus.isFailed)
                                const Tag(
                                  label: 'Payment Failed',
                                  backgroundColor: AppColors.red,
                                  labelColor: AppColors.white,
                                )
                              else
                                Checkbox(
                                  fillColor: WidgetStateProperty.all(
                                    AppColors.green,
                                  ),
                                  value: true,
                                  onChanged: null,
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.date_range_outlined,
                                size: 12,
                                color: AppColors.iconGrey,
                              ),
                              Text(
                                ' Order No : ${order.id.displayLabel}',
                                style: textTheme.titleMedium?.copyWith(
                                  color: AppColors.grey2,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                PngImage.dollar,
                                height: 8,
                                width: 10,
                              ),
                              Text(
                                ' Payment Option : ${order.paymentType.getOrDefaultValue('Cash')}',
                                style: textTheme.titleMedium?.copyWith(
                                  color: AppColors.grey2,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Column(
                              children: [
                                if (order.isCouponApplied) ...[
                                  Row(
                                    children: [
                                      Image.asset(
                                        PngImage.coupon,
                                        height: 14,
                                        width: 11,
                                      ),
                                      Text(
                                        ' Coupon ',
                                        style: textTheme.titleMedium?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        'You saved ${order.totalDiscount.getValue().toPrice()} ',
                                        style: textTheme.titleMedium?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                                Row(
                                  children: [
                                    Text(
                                      'Subtotal',
                                      style: textTheme.titleMedium?.copyWith(
                                        color: AppColors.grey2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      order.subTotal.getValue().toPrice(),
                                      style: textTheme.bodySmall?.copyWith(
                                        color: AppColors.grey2,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Delivery Charge',
                                      style: textTheme.bodySmall?.copyWith(
                                        color: AppColors.grey2,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      order.deliveryCharge
                                          .getValue()
                                          .toPrice(showFreeIfZero: true),
                                      style: textTheme.titleMedium?.copyWith(
                                        color: AppColors.grey2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  height: 2,
                                  color: AppColors.iconGrey,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      PngImage.dollar,
                                      height: 14,
                                      width: 15,
                                    ),
                                    Text(
                                      ' Grand Total',
                                      style: textTheme.titleMedium?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      order.getTotalPrice,
                                      style: textTheme.titleMedium?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 2),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  minWidth: double.maxFinite,
                  height: 45,
                  color: AppColors.black,
                  elevation: 4,
                  onPressed: isOOS
                      ? null
                      : () {
                          context
                              .read<CartBloc>()
                              .add(CartEvent.reOrder(order: order));
                          context.router.navigate(const CartRoute());
                        },
                  child: Text(
                    'Reorder',
                    style: textTheme.titleLarge?.copyWith(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                MaterialButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  minWidth: double.maxFinite,
                  height: 43,
                  color: AppColors.whiteBgCard,
                  elevation: 4,
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => CommonBottomSheet(
                        child: ReviewOrderDialogBox(
                          order: order,
                        ),
                      ),
                    ).then((value) {
                      context
                          .read<AddReviewBloc>()
                          .add(const AddReviewEvent.clearOnCancel());
                    });
                  },
                  child: Text(
                    'Rate Your Order',
                    style: textTheme.titleLarge?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
