import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/order_list/widgets/order_list_item.dart';

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
        leadingWidth: 25,
        centerTitle: false,
      ),
      body: BlocListener<OrderBloc, OrderState>(
        listener: (context, state) {
          context.read<CartBloc>().add(const CartEvent.fetch());
        },
        listenWhen: (previous, current) =>
            previous.orders.length != current.orders.length,
        child: BlocConsumer<OrderBloc, OrderState>(
          listenWhen: (previous, current) =>
              previous.apiFailureOrSuccessOption !=
              current.apiFailureOrSuccessOption,
          listener: (context, state) {
            state.apiFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  final snackBar = SnackBar(
                    backgroundColor: Colors.black,
                    content: Text(failure.failureMessage),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                child: CircularProgressIndicator(),
              );
            }
            if (state.orders.isEmpty) {
              return const NoData();
            }

            return ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16,
                );
              },
              padding: const EdgeInsets.all(
                14,
              ),
              itemCount: state.orders.length,
              itemBuilder: (context, index) {
                return OrderListItem(
                  order: state.orders[index],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
