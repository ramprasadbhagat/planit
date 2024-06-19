import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/home/entities/before_checkout.dart';
import 'package:planit/presentation/cart/widgets/before_checkout_card.dart';
import 'package:planit/presentation/router/router.gr.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Before you checkout',
                  style: textTheme.titleSmall,
                ),
                GestureDetector(
                  onTap: () {
                    context.router.navigate(const WishlistRoute());
                  },
                  child: Text(
                    'view all',
                    style: textTheme.titleSmall,
                  ),
                ),
              ],
            ),
            BlocBuilder<WishlistBloc, WishlistState>(
              builder: (context, state) {
                if (state.isWishlistEmpty) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text('No Wishlist Item'),
                    ),
                  );
                }
                return SizedBox(
                  height: 190,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.getAllWishList.length,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 8,
                    ),
                    itemBuilder: (context, index) => BeforeCheckOutCard(
                      item: state.getAllWishList[index],
                    ),
                  ),
                );
              },
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
