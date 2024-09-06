import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/track_order/track_order_bloc.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/presentation/track_order/widgets/cancel_order_alert.dart';
import 'package:planit/presentation/track_order/widgets/tracker.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class TrackOrderPage extends StatelessWidget {
  final Order order;
  const TrackOrderPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Track Order',
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: BlocBuilder<TrackOrderBloc, TrackOrderState>(
          bloc: context.read<TrackOrderBloc>()
            ..add(TrackOrderEvent.getTrackOrderDetails(order: order)),
          builder: (context, state) {
            return Skeletonizer(
              enabled: state.isFetching,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order ID : ${state.order.id.displayLabel}',
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgImage.calendar,
                        height: 12,
                        fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Estimated date of delivery :   ',
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        state.order.deliveryDate.getDisplayValue,
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgImage.clock,
                        height: 12,
                        fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Estimated time of delivery :    ',
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        state.order.deliveryTime.getOrDefaultValue(''),
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgImage.money,
                        height: 12,
                        fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Payment Type : ',
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        state.order.paymentType.getOrDefaultValue(''),
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgImage.orderStatusIcon,
                        height: 12,
                        fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Order status :  ',
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SvgPicture.asset(
                        SvgImage.truck,
                        height: 12,
                        fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        state.order.orderStatus.displayStatus,
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TrackerTimeline(
                    timeLineModel: [
                      TimeLineModel(
                        status: Status.completed,
                        statusIcon: SvgImage.box,
                        title: 'Order Received',
                        subtitle: state.order.getOrderDate,
                      ),
                      TimeLineModel(
                        status: state.order.orderStatus
                                    .getOrderStatusTrackPriority >
                                0
                            ? Status.completed
                            : Status.pending,
                        statusIcon: SvgImage.roundArrowIcon,
                        title: 'Order in Process',
                        subtitle: state.order.getOrderDate,
                      ),
                      if (state.order.orderStatus.isCancelled)
                        TimeLineModel(
                          status: state.order.orderStatus
                                      .getOrderStatusTrackPriority >
                                  1
                              ? Status.completed
                              : Status.pending,
                          statusIcon: SvgImage.truck,
                          title: 'Order Cancelled',
                          subtitle: '',
                          isLast: true,
                        ),
                      if (!state.order.orderStatus.isCancelled)
                        TimeLineModel(
                          status: state.order.orderStatus
                                      .getOrderStatusTrackPriority >
                                  1
                              ? Status.completed
                              : Status.pending,
                          statusIcon: SvgImage.truck,
                          title: 'Order Dispatched',
                          subtitle: state.order.orderStatus.isDispached
                              ? 'Dispatched to ${state.order.getDeliveryAddress}'
                              : '',
                        ),
                      if (!state.order.orderStatus.isCancelled)
                        TimeLineModel(
                          status: state.order.orderStatus
                                      .getOrderStatusTrackPriority >
                                  2
                              ? Status.completed
                              : Status.pending,
                          statusIcon: SvgImage.thumsupIcon,
                          title: 'Delivered Successfully',
                          subtitle: state.order.orderStatus.isDelivered
                              ? 'Delivered to ${state.order.getDeliveryAddress}'
                              : '',
                          isLast: true,
                        ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  if (!(state.order.orderStatus.isDispached ||
                      state.order.orderStatus.isDelivered))
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                state.order.orderStatus.isCancelled
                                    ? Text(
                                        'Order Cancelled',
                                        style: textTheme.bodyLarge?.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    : Text(
                                        'Cancel Order',
                                        style: textTheme.bodyLarge?.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                const SizedBox(height: 4),
                                if (!state.order.orderStatus.isCancelled)
                                  Text(
                                    'Cancel Order before its placed',
                                    style: textTheme.bodySmall,
                                  ),
                              ],
                            ),
                            if (!state.order.orderStatus.isCancelled)
                              SizedBox(
                                height: 33,
                                width: 89,
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const CancelOrderAlert();
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.redButton,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Cancel',
                                    style: textTheme.labelSmall?.copyWith(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
