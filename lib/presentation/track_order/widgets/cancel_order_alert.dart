import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/track_order/track_order_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CancelOrderAlert extends StatelessWidget {
  const CancelOrderAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackOrderBloc, TrackOrderState>(
      listenWhen: (previous, current) =>
          previous.isFetching != current.isFetching && !current.isFetching,
      listener: (context, state) {
        state.apiFailureOrSuccessOption.fold(() => null, (a) {
          a.fold((l) {
            CustomSnackbar.showErrorMessage(context, l.failureMessage);
          }, (r) {
            CustomSnackbar.showSuccessMessage(context, 'Order Cancelled!');
            context.router.maybePop();
          });
        });
      },
      builder: (context, state) => Skeletonizer(
        enabled: state.isFetching,
        child: AlertDialog(
          content: const Text(
            'Are you sure you want to cancel this order?',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'No',
                style: TextStyle(color: Colors.grey),
              ),
              onPressed: () => context.router.maybePop(),
            ),
            TextButton(
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                context.read<TrackOrderBloc>().add(
                      const TrackOrderEvent.cancelOrder(),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
