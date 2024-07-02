import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/presentation/theme/colors.dart';

class AddToCartButton extends StatelessWidget {
  final Product product;
  final Widget addToCartButton;
  final double width;
  final double height;
  final double iconButtonSize;

  const AddToCartButton._({
    required this.product,
    required this.addToCartButton,
    required this.width,
    required this.height,
    required this.iconButtonSize,
  });

  factory AddToCartButton.fromBottomSheet({
    required Product product,
    required VoidCallback onTap,
  }) {
    return AddToCartButton._(
      product: product,
      height: 40,
      width: 120,
      iconButtonSize: 40,
      addToCartButton: Builder(
        builder: (context) {
          return ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
            ),
            child: Text(
              'Add to cart',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: AppColors.white),
            ),
          );
        },
      ),
    );
  }

  factory AddToCartButton.fromProductCard({
    required Product product,
    required VoidCallback? onPressed,
  }) {
    return AddToCartButton._(
      product: product,
      height: 25,
      width: 70,
      iconButtonSize: 25,
      addToCartButton: Builder(
        builder: (context) {
          return OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              side: const BorderSide(color: Colors.black),
              foregroundColor: AppColors.grey3,
              padding: const EdgeInsets.symmetric(horizontal: 2),
            ),
            child: Text(
              'Add to cart',
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: height,
      width: width,
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          final itemCount = context.read<AuthBloc>().state.when(
                authenticated: (_) => state.getProductQuantity(product),
                unauthenticated: () => state.getProductQuantityLocal(product),
              );

          if (itemCount == 0) {
            return addToCartButton;
          }

          return DecoratedBox(
            decoration: const BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context.read<CartBloc>().add(
                          CartEvent.decrementQuantity(
                            product: product,
                            isLocal: context
                                .read<AuthBloc>()
                                .state
                                .isUnAuthenticated,
                          ),
                        );
                  },
                  child: SizedBox(
                    width: iconButtonSize,
                    height: iconButtonSize,
                    child: const Icon(
                      Icons.remove,
                      size: 14,
                      color: AppColors.white,
                    ),
                  ),
                ),
                Text(
                  itemCount.toString(),
                  style: textTheme.bodySmall?.copyWith(
                    color: AppColors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<CartBloc>().add(
                          CartEvent.incrementQuantity(
                            product: product,
                            isLocal: context
                                .read<AuthBloc>()
                                .state
                                .isUnAuthenticated,
                          ),
                        );
                  },
                  child: SizedBox(
                    width: iconButtonSize,
                    height: iconButtonSize,
                    child: const Icon(
                      Icons.add,
                      size: 14,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
