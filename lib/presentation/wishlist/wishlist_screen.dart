import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/presentation/cart/widgets/before_checkout_card.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';

@RoutePage()
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: const Text('Wishlist'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Your Wish List'),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<WishlistBloc, WishlistState>(
                builder: (context, state) {
                  if (state.isFetching) {
                    return const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Center(child: ShimmerItem()),
                    );
                  } else if (state.isWishlistEmpty) {
                    return const Center(
                      child: Text('Any item has not been added to wishlist'),
                    );
                  }
                  return Wrap(
                    runSpacing: 8,
                    spacing: 4,
                    children: state.getAllWishList
                        .map(
                          (e) => BeforeCheckOutCard(
                            item: e,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
