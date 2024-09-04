import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/wishlist/entities/wish_list_product.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/shopping_list/widget/item_count_widget.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';

class BeforeCheckOutCard extends StatelessWidget {
  final WishlistProduct item;

  const BeforeCheckOutCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 150,
      height: 170,
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    PngImage.placeholder,
                    height: 80,
                  ),
                  ItemCountWidget(
                    item: item,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      item.productName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodySmall?.copyWith(fontSize: 11),
                    ),
                  ),
                  Text(
                    '1g',
                    style: textTheme.bodySmall?.copyWith(
                      color: AppColors.grey1,
                      fontSize: 11,
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
                    '₹${item.price} ',
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    ' ${item.skuPrice}',
                    style: textTheme.bodySmall!.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: AppColors.lightGray,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
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
                        item.productRating,
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                    width: 75,
                    child: OutlinedButton(
                      onPressed: () {
                        if (!context.read<AuthBloc>().state.isUnAuthenticated) {
                          context.read<WishlistBloc>().add(
                                WishlistEvent.addToCart(
                                  price: item.price.toString(),
                                  productId: item.id,
                                  quantity: item.quantity.toString(),
                                  attributeItemId: item.attributeItemId,
                                ),
                              );
                        } else {
                          CustomSnackbar.showErrorMessage(
                            context,
                            StringConstant.pleaseLoginToAddItemsToShoppingList,
                          );
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        side: const BorderSide(color: Colors.black),
                        foregroundColor: AppColors.grey3,
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Add to cart',
                        style: textTheme.bodySmall?.copyWith(fontSize: 9),
                      ),
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
  const AddToListButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 25,
      width: 80,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: const BorderSide(color: Colors.black),
          foregroundColor: AppColors.grey3,
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 3,
          ),
          textStyle: textTheme.bodySmall
              ?.copyWith(fontSize: 9, color: AppColors.lightGrey),
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

class AddToListTextField extends StatefulWidget {
  final WishlistProduct item;
  const AddToListTextField({
    super.key,
    required this.item,
  });

  @override
  State<AddToListTextField> createState() => _AddToListTextFieldState();
}

class _AddToListTextFieldState extends State<AddToListTextField> {
  int countValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 80,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // context.read<WishlistBloc>().add(
              //       WishlistEvent.removeFromWishlist(
              //         productId: widget.item.id,
              //       ),
              //     );
            },
            child: const Icon(
              Icons.favorite_rounded,
              size: 12,
              color: Color.fromRGBO(167, 22, 0, 1),
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => countValue += 1),
            child: const Icon(
              Icons.add,
              size: 12,
              color: AppColors.black,
            ),
          ),
          Text(countValue.toString()),
          GestureDetector(
            onTap: () => setState(() {
              if (countValue > 1) {
                countValue -= 1;
              }
            }),
            child: const Icon(
              Icons.remove,
              size: 12,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
