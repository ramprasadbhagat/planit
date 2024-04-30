import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/presentation/cart/widgets/cart_checkout.dart';
import 'package:planit/presentation/cart/widgets/cart_item_section.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/presentation/cart/widgets/before_checkout_section.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const CartEvent.fetch());
  }

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: textTheme.labelMedium,
        ),
        leadingWidth: 20,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.lightGrey,
          ),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: () {
          context.read<CartBloc>().add(const CartEvent.fetch());
          _refreshController.refreshCompleted();
        },
        child: BlocBuilder<CartBloc, CartState>(
          buildWhen: (previous, current) =>
              previous.isCartEmpty != current.isCartEmpty,
          builder: (context, state) {
            if (state.isCartEmpty) return const EmptyCart();
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your Total Saving',
                                style: textTheme.bodyMedium,
                              ),
                              Text(
                                '₹30',
                                style: textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const CartItemSection(),
                      const SizedBox(
                        height: 10,
                      ),
                      const BeforeCheckoutSection(),
                    ],
                  ),
                ),
                const Spacer(),
                const CheckoutCard(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('No Item Available'));
  }
}
