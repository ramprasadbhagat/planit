import 'package:flutter/material.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/presentation/category/widgets/add_to_cart_bottom_sheet/similar_product_section.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class AddToCartBottomSheet extends StatelessWidget {
  final Product product;
  const AddToCartBottomSheet({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              PngImage.genericDemo('dates.png'),
            ),
          ),
          const Text('Fresh Almonds'),
          const Text(
            'Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
          ),
          const SizedBox(
            height: 10,
          ),
          const UnitList(),
          const SimilarProductSection(),
        ],
      ),
    );
  }
}

class UnitList extends StatelessWidget {
  const UnitList({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Unit',
          style: textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 8,
            ),
            itemBuilder: (context, index) => const Unit(),
          ),
        ),
      ],
    );
  }
}

class Unit extends StatelessWidget {
  const Unit({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width * 0.2,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: AppColors.extraLightGrey2,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('500 gm', style: textTheme.bodySmall?.copyWith(fontSize: 10)),
          const SizedBox(
            height: 2,
          ),
          Text('\$ 448', style: textTheme.bodySmall),
        ],
      ),
    );
  }
}
