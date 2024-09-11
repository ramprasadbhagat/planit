import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/track_order/track_order_bloc.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/presentation/track_order/widgets/cancel_order_alert.dart';
import 'package:planit/presentation/track_order/widgets/tracker.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class TrackOrderPage extends StatefulWidget {
  final Order order;
  const TrackOrderPage({super.key, required this.order});

  @override
  State<TrackOrderPage> createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<TrackOrderBloc>()
        .add(TrackOrderEvent.getTrackOrderDetails(id: widget.order.id));
  }

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
          buildWhen: (previous, current) =>
              previous.isFetching != current.isFetching ||
              previous.isCancelling != current.isCancelling,
          builder: (context, state) {
            return Skeletonizer(
              enabled: state.isFetching || state.isCancelling,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order ID : ${state.trackOrder.id.displayLabel}',
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
                        widget.order.deliveryDate.getDisplayValue,
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
                        widget.order.deliveryTime.getOrDefaultValue(''),
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
                        widget.order.paymentType.getOrDefaultValue(' '),
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
                        state.trackOrder.orderStatus.displayStatus,
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  OrderTracker(
                    state: state,
                    deliveryAddress: widget.order.getDeliveryAddress,
                  ),
                  const SizedBox(height: 20),
                  if (!(state.trackOrder.orderStatus.isDispached ||
                      state.trackOrder.orderStatus.isDelivered))
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                state.trackOrder.orderStatus.isCancelled
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
                                if (!state.trackOrder.orderStatus.isCancelled)
                                  Text(
                                    'Cancel Order before its placed',
                                    style: textTheme.bodySmall,
                                  ),
                              ],
                            ),
                            if (!state.trackOrder.orderStatus.isCancelled)
                              SizedBox(
                                height: 33,
                                width: 89,
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return CancelOrderAlert(
                                          id: widget.order.id,
                                        );
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

class OrderTracker extends StatelessWidget {
  final TrackOrderState state;
  final String deliveryAddress;

  const OrderTracker({
    super.key,
    required this.state,
    required this.deliveryAddress,
  });

  @override
  Widget build(BuildContext context) {
    if (state.trackOrder.trackOrderStatusList.isEmpty) {
      return const SizedBox.shrink();
    }

    final trackOrder = state.trackOrder;
    final orderStatus = trackOrder.orderStatus;

    return TrackerTimeline(
      timeLineModel: [
        TimeLineModel(
          status: Status.completed,
          statusIcon: SvgImage.box,
          title: 'Order Received',
          subtitle: trackOrder.trackOrderStatusList.first.date.getDisplayValue,
        ),
        TimeLineModel(
          status: orderStatus.getOrderStatusTrackPriority > 0
              ? Status.completed
              : Status.pending,
          statusIcon: SvgImage.roundArrowIcon,
          title: 'Order in Process',
          subtitle: orderStatus.isInProcess ||
                  orderStatus.getOrderStatusTrackPriority > 0
              ? trackOrder.displayDate(OrderStatus('In_Process'))
              : '',
        ),
        if (orderStatus.isCancelled)
          TimeLineModel(
            status: orderStatus.getOrderStatusTrackPriority > 1
                ? Status.completed
                : Status.pending,
            statusIcon: SvgImage.truck,
            title: 'Order Cancelled',
            subtitle: trackOrder.displayDate(OrderStatus('Cancelled')),
            isLast: true,
          ),
        if (!orderStatus.isCancelled)
          TimeLineModel(
            status: orderStatus.getOrderStatusTrackPriority > 1
                ? Status.completed
                : Status.pending,
            statusIcon: SvgImage.truck,
            title: 'Order Dispatched',
            subtitle: _buildDispatchSubtitle(),
          ),
        if (!orderStatus.isCancelled)
          TimeLineModel(
            status: orderStatus.getOrderStatusTrackPriority > 2
                ? Status.completed
                : Status.pending,
            statusIcon: SvgImage.thumsupIcon,
            title: 'Delivered Successfully',
            subtitle: _buildDeliveredSubtitle(),
            isLast: true,
          ),
      ],
    );
  }

  String _buildDispatchSubtitle() {
    final orderStatus = state.trackOrder.orderStatus;
    if (orderStatus.isDispached) {
      return 'Dispatched to $deliveryAddress\n${state.trackOrder.displayDate(OrderStatus('Dispatched'))}';
    } else if (orderStatus.getOrderStatusTrackPriority > 1) {
      return state.trackOrder.displayDate(OrderStatus('Dispatched'));
    }
    return '';
  }

  String _buildDeliveredSubtitle() {
    final orderStatus = state.trackOrder.orderStatus;
    if (orderStatus.isDelivered) {
      return 'Delivered to $deliveryAddress\n${state.trackOrder.displayDate(OrderStatus('Delivered'))}';
    } else if (orderStatus.getOrderStatusTrackPriority > 2) {
      return state.trackOrder.displayDate(OrderStatus('Delivered'));
    }
    return '';
  }
}
