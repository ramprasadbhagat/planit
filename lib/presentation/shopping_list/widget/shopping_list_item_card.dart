import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/wishlist/entities/wish_list_product.dart';
import 'package:planit/presentation/core/html_text.dart';
import 'package:planit/presentation/core/rating_list_item.dart';
import 'package:planit/presentation/shopping_list/widget/item_count_widget.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class ShoppingListItemCard extends StatelessWidget {
  final WishlistProduct item;
  final Function() onTap;
  final bool isSelected;
  const ShoppingListItemCard({
    super.key,
    required this.item,
    required this.onTap,
    required this.isSelected,
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
                .read<WishlistBloc>()
                .add(WishlistEvent.removeFromWishlist(productId: item.uid)),
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14.0),
          margin: const EdgeInsets.only(top: 14),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.extraLightGrey3 : AppColors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: isSelected
                ? Border.all(
                    width: 1,
                    color: AppColors.black,
                  )
                : Border.all(
                    color: AppColors.white,
                  ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 2),
                spreadRadius: 1,
                blurRadius: 2,
                color: AppColors.grey1.withOpacity(0.2),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color:
                      isSelected ? AppColors.white : AppColors.extraLightGray,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                height: MediaQuery.sizeOf(context).height * 0.12,
                width: MediaQuery.sizeOf(context).width * 0.24,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://nzms-dev-plantit.nzmsecurity.com/products/1718883607101.jpeg',
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.productName,
                      style: textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    HtmlText(
                      item.productDescription,
                      style: textTheme.bodyMedium?.copyWith(
                        color: AppColors.grey1,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Price: ',
                            style: textTheme.bodySmall
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: '₹ ${item.price}',
                            style: textTheme.bodySmall
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        StarRating(
                          rating: double.tryParse(item.productRating) ?? 0,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          item.productRating,
                          style: textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        ItemCountWidget(
                          item: item,
                          isLoading: context
                              .read<WishlistBloc>()
                              .state
                              .isUpdateQuantity,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
