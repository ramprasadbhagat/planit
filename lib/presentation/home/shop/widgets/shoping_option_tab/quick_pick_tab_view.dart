import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/presentation/category/widgets/product_card.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';
import 'package:planit/presentation/router/router.gr.dart';

class QuickPickTabView extends StatelessWidget {
  const QuickPickTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTitle(
          title: 'Your quick picks',
          onTap: () {
            context.router.navigate(const QuickPicksRoute());
          },
          hideViewAllButton:
              context.read<QuickPicksBloc>().state.quicksPickProducts.isEmpty,
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: BlocBuilder<QuickPicksBloc, QuickPicksState>(
            builder: (context, state) {
              if (state.isFetching) {
                return const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(child: ShimmerItem()),
                );
              } else if (state.quicksPickProducts.isEmpty) {
                return const NoData();
              }
              return GridView.builder(
                primary: false,
                padding: const EdgeInsets.symmetric(horizontal: 2),
                itemCount: state.quicksPickProducts.length < 6
                    ? state.quicksPickProducts.length
                    : 6,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 140,
                  mainAxisExtent: 170,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return FittedBox(
                    fit: BoxFit.fill,
                    child: ProductCard(
                      product: state.quicksPickProducts[index].toProduct,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
