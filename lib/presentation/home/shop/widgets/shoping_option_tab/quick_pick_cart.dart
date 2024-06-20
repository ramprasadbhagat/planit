import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/quick_picks/entities/quick_picks.dart';
import 'package:planit/presentation/core/add_to_cart_bottom_sheet.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class QuickPickCard extends StatelessWidget {
  final QuickPicks item;
  const QuickPickCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 130,
      height: 170,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  // Image.network(
                  //   item.productImages.first,
                  //   height: 80,
                  //   width: 110,
                  //   fit: BoxFit.fill,
                  // ),
                  CachedNetworkImage(
                    errorWidget: (context, url, error) =>
                        Image.asset(PngImage.placeholder),
                    imageUrl: item.productImages.firstOrNull ?? '',
                    height: 80,
                    width: 110,
                    fit: BoxFit.fill,
                  ),
                  item.price.isEditable
                      ? const AddToListTextField()
                      : AddToListButton(
                          productId: item.id,
                        ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      item.productName,
                      style: textTheme.bodySmall?.copyWith(fontSize: 10),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    item.attributeItem,
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
                    '₹${item.productMRP} ',
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 9,
                    ),
                  ),
                  Text(
                    item.skuPrice,
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
                        item.productRating.toString(),
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 75,
                    child: OutlinedButton(
                      onPressed: () => showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) => CommonBottomSheet(
                          child: AddToCartBottomSheet(
                            product: item.toProduct,
                          ),
                        ),
                      ),
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
  final String productId;
  const AddToListButton({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final wishlistBloc = context.read<WishlistBloc>();
    return SizedBox(
      height: 25,
      width: 80,
      child: OutlinedButton(
        onPressed: () {
          wishlistBloc.add(WishlistEvent.addToWishlist(productId: productId));
          const snackBar = SnackBar(
            content: Text('Item added to wishlist'),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
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
        child: Row(
          children: [
            const Icon(
              Icons.favorite_outline,
              size: 12,
              color: AppColors.grey3,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              'Add to list',
              style: textTheme.bodySmall?.copyWith(
                fontSize: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddToListTextField extends StatefulWidget {
  const AddToListTextField({super.key});

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
          const Icon(
            Icons.favorite_rounded,
            size: 12,
            color: Color.fromRGBO(167, 22, 0, 1),
          ),
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
          Text(countValue.toString()),
          GestureDetector(
            onTap: () => setState(() => countValue += 1),
            child: const Icon(
              Icons.add,
              size: 12,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
