import 'package:flutter/material.dart';
import 'package:planit/domain/home/entities/before_checkout.dart';
import 'package:planit/presentation/category/widgets/add_to_cart_bottom_sheet/similar_product_cart.dart';

class SimilarProductSection extends StatelessWidget {
  const SimilarProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: beforeCheckoutPickList.length,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 0,
            ),
            itemBuilder: (context, index) => SimilarProductCard(
              item: beforeCheckoutPickList.elementAt(index),
            ),
          ),
        ),
      ],
    );
  }
}

List<BeforeCheckout> beforeCheckoutPickList = <BeforeCheckout>[
  BeforeCheckout(
    image: 'quick_pick_1.png',
    title: 'Fresh Spices',
    editable: false,
  ),
  BeforeCheckout(
    image: 'quick_pick_2.png',
    title: 'Fresh Spices',
    editable: true,
  ),
  BeforeCheckout(
    image: 'quick_pick_3.png',
    title: 'Fresh Spices',
    editable: false,
  ),
  BeforeCheckout(
    image: 'quick_pick_4.png',
    title: 'Fresh Spices',
    editable: false,
  ),
  BeforeCheckout(
    image: 'quick_pick_5.png',
    title: 'Fresh Spices',
    editable: false,
  ),
  BeforeCheckout(
    image: 'quick_pick_6.png',
    title: 'Fresh Spices',
    editable: false,
  ),
];
