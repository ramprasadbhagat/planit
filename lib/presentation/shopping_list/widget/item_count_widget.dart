import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/wishlist/entities/wish_list_product.dart';
import 'package:planit/presentation/core/loading_shimmer/loading_shimmer.dart';
import 'package:planit/presentation/theme/colors.dart';

class ItemCountWidget extends StatefulWidget {
  const ItemCountWidget({
    super.key,
    required this.item,
    this.isLoading = false,
  });
  final WishlistProduct item;
  final bool isLoading;

  @override
  State<ItemCountWidget> createState() => _ItemCountWidgetState();
}

class _ItemCountWidgetState extends State<ItemCountWidget> {
  int countValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 80,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: LoadingShimmer.withChild(
        enabled: widget.isLoading,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.favorite_rounded,
              size: 12,
              color: Color.fromRGBO(167, 22, 0, 1),
            ),
            GestureDetector(
              onTap: () => context.read<WishlistBloc>().add(
                    WishlistEvent.updateProductQuantity(
                      id: widget.item.uid,
                      quantity: (widget.item.quantity - 1).toString(),
                    ),
                  ),
              child: const Icon(
                Icons.remove,
                size: 12,
                color: AppColors.black,
              ),
            ),
            Text(widget.item.quantity.toString()),
            GestureDetector(
              onTap: () {
                context.read<WishlistBloc>().add(
                      WishlistEvent.updateProductQuantity(
                        id: widget.item.uid,
                        quantity: (widget.item.quantity + 1).toString(),
                      ),
                    );
              },
              child: const Icon(
                Icons.add,
                size: 12,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
