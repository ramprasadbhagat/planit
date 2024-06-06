import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/presentation/theme/colors.dart';

class ChecoutItemCard extends StatelessWidget {
  final CartProduct cartProduct;
  const ChecoutItemCard({
    super.key,
    required this.cartProduct,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartProduct.productName,
                    style: textTheme.bodySmall
                        ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    cartProduct.productDescription,
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightGray,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${cartProduct.quantity}x',
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightGray,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '₹${cartProduct.totalPrice}',
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: AppColors.lightGray2,
          ),
        ],
      ),
    );
  }
}
