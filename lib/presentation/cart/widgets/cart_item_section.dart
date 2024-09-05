import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/presentation/cart/widgets/cart_item.dart';
import 'package:planit/presentation/cart/widgets/cart_item_local.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class CartItemSection extends StatelessWidget {
  const CartItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocBuilder<CartBloc, CartState>(
          buildWhen: (previous, current) =>
              previous.cartItem != current.cartItem,
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              SvgImage.locationPin,
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              'Delivering to ${context.read<PincodeBloc>().state.pincode}',
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Text(
                          'delivery by 24-03-2024',
                          style: textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Text(
                      'Shipment of ${context.read<AuthBloc>().state == const AuthState.unauthenticated() ? state.cartData.length : state.cartItem.products.length} items',
                      style: textTheme.bodySmall?.copyWith(
                        color: AppColors.grey2,
                      ),
                    ),
                  ],
                ),
                if (context.read<AuthBloc>().state.isUnAuthenticated)
                  ...getLocalCartData()
                else
                  ...state.cartItem.products.map(
                    (e) => CartItemCard(
                      cartProduct: e,
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

List<Widget> getLocalCartData() {
  return [
    BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Column(
          children: [
            for (int i = 0; i < state.cartData.length; i++)
              CartItemLocal(cartProduct: state.cartData[i], index: i),
          ],
        );
      },
    ),
  ];
}
