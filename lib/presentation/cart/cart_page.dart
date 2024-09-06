import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/presentation/cart/widgets/cart_checkout.dart';
import 'package:planit/presentation/cart/widgets/cart_item_section.dart';
import 'package:planit/presentation/cart/widgets/before_checkout_section.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';
import 'package:planit/utils/svg_image.dart';
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

  // final RefreshController _refreshController =
  //     RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 30,
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: RefreshIndicator(
        color: AppColors.black,
        onRefresh: () async =>
            context.read<CartBloc>().add(const CartEvent.fetch()),
        child: BlocConsumer<CartBloc, CartState>(
          listener: (context, state) {
            CustomSnackbar.showErrorMessage(
              context,
              StringConstant.itemRemovedFromCart,
            );
          },
          listenWhen: (previous, current) =>
              current.cartItem.products.length <
              previous.cartItem.products.length,
          builder: (context, state) {
            if (state.isCartEmpty) return const EmptyCart();
            return Skeletonizer(
              enabled: state.isFetching,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Card(
                          color: AppColors.extraLightGray,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 12,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Your total savings',
                                ),
                                Text(
                                  state.cartItem.totalDiscount
                                      .getValue()
                                      .toPrice(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: <Widget>[
                              CartItemSection(),
                              SizedBox(
                                height: 10,
                              ),
                              BeforeCheckoutSection(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: double.maxFinite,
                    child: CheckoutCard(),
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
