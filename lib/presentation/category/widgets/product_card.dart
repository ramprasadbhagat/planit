import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/presentation/core/add_to_cart_bottom_sheet.dart';
import 'package:planit/presentation/core/add_to_cart_button.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/no_pincode_error_dialog.dart';
import 'package:planit/presentation/shopping_list/widget/item_count_widget.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: 130,
      height: 170,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: AppColors.extraLightGrey2,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: InkWell(
        onTap: () => showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) => CommonBottomSheet(
            child: AddToCartBottomSheet(
              productId: product.productId.getValue(),
              attributeItemId: product.attributeItemId.isValid()
                  ? product.attributeItemId.getValue()
                  : null,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CachedNetworkImage(
                      errorWidget: (context, url, error) =>
                          Image.asset(PngImage.placeholder),
                      imageUrl: product.productImages.firstOrNull ?? '',
                      height: 80,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                  BlocBuilder<WishlistBloc, WishlistState>(
                    builder: (context, state) {
                      final item = state.getwishlistProduct(product);
                      if (item == null) {
                        return AddToListButton(product: product);
                      }
                      return ItemCountWidget(
                        item: item,
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      product.name,
                      style: textTheme.bodySmall?.copyWith(fontSize: 10),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    product.attributeItem,
                    style: textTheme.bodySmall?.copyWith(
                      color: AppColors.grey1,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '₹${product.getPriceValue} ',
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 9,
                    ),
                  ),
                  Text(
                    '${(double.tryParse(product.getPriceValue) ?? 0) + 30.0}',
                    style: textTheme.bodySmall!.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: AppColors.lightGray,
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 9,
                      ),
                      Text(
                        product.productRating.toStringAsFixed(1),
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                  product.attributeItemId.isValid() &&
                          (product.backOrder || product.price.quantity > 0)
                      ? AddToCartButton.fromProductCard(
                          product: product,
                          onPressed: () async {
                            if (context
                                .read<AuthBloc>()
                                .state
                                .isUnAuthenticated) {
                              context.read<CartBloc>().add(
                                    CartEvent.addToCartLocal(
                                      product: product,
                                      quantity: 1,
                                    ),
                                  );

                              const snackBar = SnackBar(
                                content: Text('Item added to cart'),
                              );

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } else {
                              if (context
                                  .read<PincodeBloc>()
                                  .state
                                  .pincode
                                  .isEmpty) {
                                await showDialog<void>(
                                  context: context,
                                  barrierDismissible:
                                      false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return const NoPincodeErrorDialog();
                                  },
                                );
                              } else {
                                context.read<CartBloc>().add(
                                      CartEvent.addToCart(
                                        product: product,
                                        quantity: 1,
                                      ),
                                    );

                                const snackBar = SnackBar(
                                  content: Text('Item added to cart'),
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            }
                          },
                        )
                      : Text(
                          'Out of stock',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    fontSize: 12,
                                  ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddToListButton extends StatelessWidget {
  final Product product;
  const AddToListButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final wishlistBloc = context.read<WishlistBloc>();
    return SizedBox(
      height: 25,
      width: 82,
      child: OutlinedButton(
        onPressed: () {
          if (!context.read<AuthBloc>().state.isUnAuthenticated) {
            wishlistBloc.add(
              WishlistEvent.addToWishlist(
                product: product,
              ),
            );
          } else {
            const snackBar = SnackBar(
              content: Text('Please Login to add items to shopping list'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: const BorderSide(color: Colors.black),
          foregroundColor: AppColors.grey3,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 3,
          ),
          textStyle: textTheme.bodySmall
              ?.copyWith(fontSize: 9, color: AppColors.grey3),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.favorite_outline,
              size: 12,
              color: AppColors.grey3,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Add to list',
            ),
          ],
        ),
      ),
    );
  }
}
