import 'package:flutter/material.dart';
import 'package:planit/domain/similar_product/entities/similar_product.dart';
import 'package:planit/presentation/theme/colors.dart';

class SimilarProductCard extends StatelessWidget {
  final SimilarProduct item;

  const SimilarProductCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.36,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: AppColors.extraLightGrey3),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  child: Image.network(item.productImages.first),
                ),
                item.price.isEditable
                    ? const AddToListTextField()
                    : const AddToListButton(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    item.productName,
                    style: textTheme.bodySmall?.copyWith(fontSize: 10),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const SizedBox(
                  width: 5,
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
                      item.productRating.toString(),
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                  width: MediaQuery.sizeOf(context).width * 0.17,
                  child: OutlinedButton(
                    onPressed: () {},
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
                      style: textTheme.bodySmall?.copyWith(fontSize: 8),
                    ),
                  ),
                ),
              ],
            ),
          ],
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
      height: 28,
      width: 75,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: const BorderSide(
            color: AppColors.grey3,
          ),
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
              style: textTheme.bodySmall?.copyWith(fontSize: 8),
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