import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/product_detail/product_detail_bloc.dart';
import 'package:planit/domain/cart/entities/cart_item.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/locator.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/presentation/theme/colors.dart';

class CartItemCard extends StatelessWidget {
  final CartItem cartItem;
  const CartItemCard({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider<ProductDetailBloc>(
      create: (context) => locator<ProductDetailBloc>()
        ..add(
          ProductDetailEvent.fetch(ProductId(cartItem.productId)),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BlocBuilder<ProductDetailBloc, ProductDetailState>(
              buildWhen: (previous, current) =>
                  previous.productDetail != current.productDetail,
              builder: (context, state) {
                return Container(
                  decoration: const BoxDecoration(
                    color: AppColors.extraLightGray,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  width: MediaQuery.sizeOf(context).width * 0.18,
                  child: CachedNetworkImage(
                    imageUrl:
                        state.productDetail.productImages.firstOrNull ?? '',
                    fit: BoxFit.scaleDown,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(
                      color: AppColors.extraLightGray,
                    ),
                    errorWidget: (context, error, stackTrace) => Image.asset(
                      PngImage.generic('category_1.png'),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.product.name,
                  style: textTheme.bodySmall?.copyWith(fontSize: 9),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '1 kg',
                  style: textTheme.bodySmall?.copyWith(fontSize: 9),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '\$${cartItem.product.skuPrice.getOrDefaultValue(0)} ',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 9,
                      ),
                    ),
                    Text(
                      ' ${cartItem.product.startingPrice} ',
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
