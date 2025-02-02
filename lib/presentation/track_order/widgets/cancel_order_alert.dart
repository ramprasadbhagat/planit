import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/application/track_order/track_order_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CancelOrderAlert extends StatelessWidget {
  final StringValue id;
  const CancelOrderAlert({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackOrderBloc, TrackOrderState>(
      listenWhen: (previous, current) =>
          previous.isCancelling != current.isCancelling &&
          !current.isCancelling,
      listener: (context, state) {
        state.apiFailureOrSuccessOption.fold(() => null, (a) {
          a.fold((l) {
            CustomSnackbar.showErrorMessage(context, l.failureMessage);
          }, (r) {
            CustomSnackbar.showSuccessMessage(context, 'Order Cancelled!');
            context
                .read<TrackOrderBloc>()
                .add(TrackOrderEvent.getTrackOrderDetails(id: id));
            context.read<OrderBloc>().add(const OrderEvent.fetchOrders());
            context.router.maybePop();
          });
        });
      },
      buildWhen: (previous, current) =>
          previous.isCancelling != current.isCancelling,
      builder: (context, state) => Skeletonizer(
        enabled: state.isCancelling,
        child: AlertDialog(
          content: const Text(
            'Are you sure you want to cancel this order?',
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'No',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.grey1,
                    ),
              ),
              onPressed: () => context.router.maybePop(),
            ),
            TextButton(
              child: Text(
                'Yes',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.redButton,
                    ),
              ),
              onPressed: () => context.read<TrackOrderBloc>().add(
                    const TrackOrderEvent.cancelOrder(),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
