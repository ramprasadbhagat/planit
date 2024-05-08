import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/similar_product/similar_product_bloc.dart';
import 'package:planit/domain/home/entities/before_checkout.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/presentation/category/widgets/add_to_cart_bottom_sheet/similar_product_cart.dart';

class SimilarProductSection extends StatelessWidget {
  final Product product;
  const SimilarProductSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    context
        .read<SimilarProductBloc>()
        .add(SimilarProductEvent.fetch(product.productId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.25,
          child: BlocBuilder<SimilarProductBloc, SimilarProductState>(
            builder: (context, state) {
              if (state.isFetching) {
                return const Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.similarProductList.length,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 0,
                ),
                itemBuilder: (context, index) => SimilarProductCard(
                  item: state.similarProductList.elementAt(index),
                ),
              );
            },
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
