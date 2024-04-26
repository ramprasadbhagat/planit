import 'package:flutter/material.dart';
import 'package:planit/domain/home/entities/before_checkout.dart';
import 'package:planit/presentation/cart/widgets/before_checkout_card.dart';

class BeforeCheckoutSection extends StatelessWidget {
  const BeforeCheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Before you checkout',
              style: textTheme.titleSmall?.copyWith(fontSize: 12),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: beforeCheckoutPickList.length,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                itemBuilder: (context, index) => BeforeCheckOutCard(
                  item: beforeCheckoutPickList.elementAt(index),
                ),
              ),
            ),
          ],
        ),
      ),
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
