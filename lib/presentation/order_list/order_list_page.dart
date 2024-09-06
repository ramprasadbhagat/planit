import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/order/entities/order_group.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scroll_list.dart';
import 'package:planit/presentation/order_list/widgets/order_list_item.dart';
import 'package:planit/presentation/theme/colors.dart';

part 'widgets/order_list_group.dart';

@RoutePage()
class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  void initState() {
    context.read<OrderBloc>().add(const OrderEvent.fetchOrders());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order List',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 30,
        centerTitle: false,
      ),
      body: BlocConsumer<OrderBloc, OrderState>(
        listenWhen: (previous, current) =>
            previous.apiFailureOrSuccessOption !=
            current.apiFailureOrSuccessOption,
        listener: (context, state) {
          state.apiFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (l) {
                CustomSnackbar.showErrorMessage(
                  context,
                  l.failureMessage,
                );
              },
              (_) {},
            ),
          );
        },
        buildWhen: (previous, current) =>
            previous.isFetchingOrders != current.isFetchingOrders,
        builder: (context, state) {
          if (state.isFetchingOrders) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.black,
                strokeWidth: 3,
              ),
            );
          }
          return ScrollList<OrderGroup>(
            noRecordFoundWidget: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: NoData.ordersHistory(),
            ),
            controller: ScrollController(),
            onRefresh: () =>
                context.read<OrderBloc>().add(const OrderEvent.fetchOrders()),
            onLoadingMore: () => {},
            isLoading: state.isFetchingOrders,
            itemBuilder: (context, index, item) => _OrderListGroup(
              orderGroup: state.orders.getOrderGroupList[index],
            ),
            items: state.orders.getOrderGroupList,
          );
        },
      ),
    );
  }
}
