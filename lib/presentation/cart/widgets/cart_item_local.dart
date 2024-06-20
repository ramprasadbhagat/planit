import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/presentation/theme/colors.dart';

class CartItemLocal extends StatelessWidget {
  final CartProductLocal cartProduct;
  final int index;
  const CartItemLocal({
    super.key,
    required this.cartProduct,
    required this.index,
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
                .add(CartEvent.deletCartLocal(index: index)),
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
                imageUrl: cartProduct.productImages.firstOrNull ?? '',
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartProduct.name,
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlackDeep,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  cartProduct.attributeItem,
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
                      '₹${cartProduct.price} ',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      ' ${double.tryParse(cartProduct.price) ?? 0 + 30.0} ',
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
            const Spacer(),
            const AddToCart(),
          ],
        ),
      ),
    );
  }
}

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int countValue = 1;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: 25,
      width: 70,
      color: AppColors.black,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => setState(() {
              if (countValue > 1) {
                countValue -= 1;
              }
            }),
            child: Container(
              width: 12,
              color: AppColors.white,
              child: const Icon(
                Icons.remove,
                size: 12,
                color: AppColors.black,
              ),
            ),
          ),
          Text(
            countValue.toString(),
            style: textTheme.bodySmall?.copyWith(
              color: AppColors.white,
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => countValue += 1),
            child: Container(
              width: 12,
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
  }
}
