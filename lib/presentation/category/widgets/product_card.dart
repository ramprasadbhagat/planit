import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/similar_product/similar_product_bloc.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/presentation/core/add_to_cart_bottom_sheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

import 'package:planit/locator.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.28,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  child: Image.network(
                    product.productImages.first,
                  ),
                ),
                true ? const AddToListTextField() : const AddToListButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodySmall?.copyWith(fontSize: 10),
                  ),
                ),
                Text(
                  '1g',
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
                  '\$430 ',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 9,
                  ),
                ),
                Text(
                  ' 470',
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
                      '4.3',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                AddToCartButton(
                  product: product,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddToCartButton extends StatelessWidget {
  final Product product;
  const AddToCartButton({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.03,
      width: MediaQuery.sizeOf(context).width * 0.18,
      child: OutlinedButton(
        onPressed: () => showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) => AddToCartBottomSheet(
            product: product,
          ),
        ),
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
          style: textTheme.bodySmall?.copyWith(fontSize: 9),
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
      width: 75,
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