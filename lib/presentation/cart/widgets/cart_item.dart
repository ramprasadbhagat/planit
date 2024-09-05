import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/presentation/theme/colors.dart';

class CartItemCard extends StatelessWidget {
  final CartProduct cartProduct;
  const CartItemCard({
    super.key,
    required this.cartProduct,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => context
                .read<CartBloc>()
                .add(CartEvent.removeFromCart(product: cartProduct)),
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.extraLightGray,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: MediaQuery.sizeOf(context).height * 0.08,
              width: MediaQuery.sizeOf(context).width * 0.18,
              child: CachedNetworkImage(
                imageUrl: cartProduct.image,
                fit: BoxFit.scaleDown,
                placeholder: (context, url) => const CircularProgressIndicator(
                  color: AppColors.extraLightGray,
                ),
                errorWidget: (context, error, stackTrace) => Image.asset(
                  PngImage.placeholder,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartProduct.productName,
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBlackDeep,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    cartProduct.attributeitem,
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '₹${cartProduct.totalPrice} ',
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        ' ${cartProduct.totalPrice + cartProduct.discount} ',
                        style: textTheme.bodySmall!.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: AppColors.lightGray,
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AddToCart(
              product: cartProduct.toProductWithAttributeIdAndProductId,
            ),
          ],
        ),
      ),
    );
  }
}

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final itemCount = context.read<AuthBloc>().state.when(
              authenticated: (_) => state.getProductQuantity(product),
              unauthenticated: () => state.getProductQuantityLocal(product),
              initial: () {},
            );
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          height: 28,
          width: 85,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<CartBloc>().add(
                        CartEvent.decrementQuantity(
                          product: product,
                          isLocal:
                              context.read<AuthBloc>().state.isUnAuthenticated,
                        ),
                      );
                },
                child: Container(
                  width: 15,
                  color: AppColors.white,
                  child: const Icon(
                    Icons.remove,
                    size: 12,
                    color: AppColors.black,
                  ),
                ),
              ),
              Text(
                itemCount.toString(),
                style: textTheme.bodySmall?.copyWith(
                  color: AppColors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<CartBloc>().add(
                        CartEvent.incrementQuantity(
                          product: product,
                          isLocal:
                              context.read<AuthBloc>().state.isUnAuthenticated,
                        ),
                      );
                },
                child: Container(
                  width: 15,
                  color: AppColors.white,
                  child: const Icon(
                    Icons.add,
                    size: 12,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
