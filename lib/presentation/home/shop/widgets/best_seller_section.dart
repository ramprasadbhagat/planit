import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/best_seller/best_seller_bloc.dart';
import 'package:planit/domain/best_seller/entities/best_seller_product.dart';
import 'package:planit/presentation/core/add_to_cart_bottom_sheet.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      color: AppColors.extraLightGray,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'BestSeller',
            style: textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<BestSellerBloc, BestSellerState>(
            builder: (context, state) {
              return Skeletonizer(
                enabled: state.isFetching,
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.products.length,
                    itemBuilder: (BuildContext context, int index) =>
                        BestSellerItem(item: state.products[index]),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  final BestSellerProduct item;
  const BestSellerItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Card(
                child: InkWell(
                  onTap: () => showModalBottomSheet<void>(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) => CommonBottomSheet(
                      child: AddToCartBottomSheet(
                        productId: item.id.getValue(),
                        attributeItemId: item.attributeItemId.isValid()
                            ? item.attributeItemId.getValue()
                            : null,
                      ),
                    ),
                  ),
                  child: Container(
                    width: 130,
                    height: 180,
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        if (item.productImage.isValid())
                          CachedNetworkImage(
                            imageUrl: item.productImage.getValue(),
                            width: 120,
                            height: 130,
                            fit: BoxFit.scaleDown,
                          )
                        else
                          Image.asset(
                            PngImage.placeholder,
                            width: 120,
                            height: 130,
                            fit: BoxFit.scaleDown,
                          ),
                        Text(
                          item.productName.getOrDefaultValue(''),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: item.isOOS ? AppColors.red : AppColors.availableTagColor,
              ),
              child: Text(
                item.isOOS ? 'Out of Stock' : 'Available',
                style: textTheme.bodySmall!.copyWith(color: AppColors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
