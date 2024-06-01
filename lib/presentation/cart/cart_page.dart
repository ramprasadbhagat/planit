import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/presentation/cart/widgets/cart_checkout.dart';
import 'package:planit/presentation/cart/widgets/cart_item_section.dart';
import 'package:planit/presentation/cart/widgets/before_checkout_section.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
          'Cart',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 20,
        centerTitle: false,
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back_ios_new_outlined,
        //     color: AppColors.lightGrey,
        //   ),
        //   onPressed: () => context.router.maybePop(),
        // ),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: () {
          context.read<CartBloc>().add(const CartEvent.fetch());
          _refreshController.refreshCompleted();
        },
        child: BlocConsumer<CartBloc, CartState>(
          listener: (context, state) {
            const snackBar = SnackBar(
              backgroundColor: Colors.red,
              content: Text('Item removed from cart'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          listenWhen: (previous, current) =>
              current.cartItem.products.length <
              previous.cartItem.products.length,
          builder: (context, state) {
            if (state.isCartEmpty) return const EmptyCart();
            return Skeletonizer(
              enabled: state.isFetching,
              child: ListView(
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
                                  '₹${state.cartItem.totalDiscount.getValue()}',
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
              ),
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
    return const NoData(
      message: 'No cart item added to cart.',
      errorSvgImage: SvgImage.emptyCartImage,
    );
  }
}
